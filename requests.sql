-- Топ-3 существ с самым маленьким количеством здоровья:
-- вывести название босса, название существа и его здоровье в порядке возрастания
SELECT b.name, c.health
FROM wow_db.bosses b
INNER JOIN wow_db.creatures c
ON b.id = c.boss_id
ORDER BY c.health
LIMIT 3;

-- Список гильдий, которые появлялись в топ-10 по скорости закрытия рейда больше одного раза:
-- вывести название гильдии, сервер, фракцию и сколько раз она появлялась в топ-10
SELECT g.name AS guild_name, g.server, g.fraction, times.times_appeared AS times_in_top_10
FROM wow_db.guilds g
INNER JOIN (
    SELECT g_to_count.id, COUNT(*) AS times_appeared
    FROM wow_db.raids_x_guilds rxg
    INNER JOIN wow_db.guilds g_to_count ON rxg.guild_id = g_to_count.id
    WHERE rxg.race_order <= 10
    GROUP BY g_to_count.id
    HAVING (COUNT(*) > 1)
) AS times
ON g.id = times.id;

-- Боссы, с которых выпадают средства передвижения:
-- вывести название рейда, название босса, средство передвижения и шанс его выпадения
SELECT r.name AS raid_name, b.name AS boss_name, l.name AS mount_name, l.drop_rate
FROM wow_db.raids r
INNER JOIN wow_db.bosses b ON r.id = b.raid_id
INNER JOIN (
    SELECT boss_id, name, drop_rate
    FROM wow_db.loot
    WHERE wow_db.loot.type = 'Средство передвижения'
) AS l
ON b.id = l.boss_id;

-- Для каждого слота экипировки найти предметы экипировки первоочередно с наибольшей выносливостью, затем среди них с наибольшей искусностью по всем рейдам 35-45 уровней:
-- вывести название рейда, название босса, название предмета экипировки, слот, показатель выносливости, показатель искусности
WITH max_stamina_loot AS (
    SELECT l.boss_id,
           l.name,
           l.slot,
           l.stamina,
           l.mastery
    FROM
    wow_db.loot l
    INNER JOIN (
        SELECT l1.slot, MAX(l1.stamina) AS stamina
        FROM wow_db.raids r
        INNER JOIN wow_db.bosses b ON r.id = b.raid_id AND r.level BETWEEN 35 AND 45
        INNER JOIN wow_db.loot l1 ON b.id = l1.boss_id AND l1.slot IS NOT NULL
        GROUP BY l1.slot
    ) AS max_stamina
    ON l.slot = max_stamina.slot AND l.stamina = max_stamina.stamina
)
SELECT r.name AS raid_name,
       b.name AS boss_name,
       t1.name AS thing_name,
       t1.slot, t1.stamina, t1.mastery
FROM max_stamina_loot t1
INNER JOIN (
    SELECT t2.slot, MAX(t2.mastery) AS mastery
    FROM max_stamina_loot t2
    GROUP BY t2.slot
) AS max_stamina_mastery
ON t1.slot = max_stamina_mastery.slot AND t1.mastery = max_stamina_mastery.mastery
INNER JOIN wow_db.bosses b ON t1.boss_id = b.id
INNER JOIN wow_db.raids r ON b.raid_id = r.id;

-- Для каждой группы рейдов по уровню найти средний уровень предметов экипировки, выпадающих с этих рейдов:
-- вывести уровень рейда и средний уровень предметов экипировки, упорядочить по возрастанию уровня рейда
SELECT r.level AS raid_level, AVG(l.item_level) AS avg_item_level
FROM wow_db.loot l
INNER JOIN wow_db.bosses b ON l.boss_id = b.id AND l.slot IS NOT NULL
INNER JOIN wow_db.raids r ON b.raid_id = r.id
GROUP BY r.level
ORDER BY r.level;

-- Список изменений способностей в сторону уменьшения урона
-- вывести название рейда, название босса, название существа, название способности, прежний урон и урон после изменения
WITH fixes AS (
SELECT creature_id, name, prev_damage_at_once, damage_at_once
FROM (
    SELECT ah.creature_id, ah.name,
           LAG(ah.damage_at_once, 1, -1) OVER (
                PARTITION BY ah.id
                ORDER BY ah.valid_from) AS prev_damage_at_once,
           ah.damage_at_once
    FROM wow_db.abilities_SCD4_history ah
)
WHERE prev_damage_at_once > damage_at_once
)
SELECT r.name AS raid_name, b.name AS boss_name, c.name AS creature_name,
       fixes.name AS ability_name, fixes.prev_damage_at_once, fixes.damage_at_once
FROM fixes
INNER JOIN wow_db.creatures c ON fixes.creature_id = c.id
INNER JOIN wow_db.bosses b ON c.boss_id = b.id
INNER JOIN wow_db.raids r ON b.raid_id = r.id;

-- Топ-3 гильдии (закрывшие первыми больше всего рейдов) с 01-01-2007 до 01-01-2017:
-- вывести название гильдии, сервер, фракцию
SELECT g.name AS guild_name, g.server, g.fraction
FROM wow_db.guilds g
INNER JOIN (
    SELECT g_world_first.id, COUNT(*) AS times_world_first
    FROM wow_db.raids_x_guilds rxg
    INNER JOIN wow_db.guilds g_world_first ON rxg.guild_id = g_world_first.id
    WHERE rxg.date BETWEEN '01-01-2007' AND '01-01-2017' AND rxg.race_order = 1
    GROUP BY g_world_first.id
) AS old_world_first
ON g.id = old_world_first.id
ORDER BY old_world_first.times_world_first DESC 
LIMIT 3;

-- Для каждого существа найти способность(и), наносящую наибольшее количество урона за одно применение
-- (урон от отрицательного эффекта учитывается за все время действия):
-- вывести название босса, название существа, название способности и ее суммарный урон
WITH a_max_damage AS (
    SELECT a.name, a.creature_id,
        CASE
            WHEN a.period = 0 OR (FLOOR(a.duration / a.period) <= 1) THEN
                a.damage_at_once
            ELSE
                FLOOR(a.duration / a.period) * a.damage_at_once
        END AS total_damage
    FROM wow_db.abilities a
)
SELECT b.name AS boss_name,
       c.name AS creature_name,
       a_max_damage.name AS ability_name,
       a_max_damage.total_damage AS total_damage
FROM a_max_damage
INNER JOIN (
    SELECT a_max_damage.creature_id, MAX(a_max_damage.total_damage) AS max_damage
    FROM a_max_damage
    GROUP BY a_max_damage.creature_id
) AS creature_a_max_damage
ON a_max_damage.creature_id = creature_a_max_damage.creature_id AND
   a_max_damage.total_damage = creature_a_max_damage.max_damage
INNER JOIN wow_db.creatures c ON a_max_damage.creature_id = c.id
INNER JOIN wow_db.bosses b ON c.boss_id = b.id;

-- Список боссов, природа способностей существ которых преимущественно огненная (больше половины способностей босса):
-- вывести название рейда и название босса
WITH a_c_joined AS (
    SELECT c.boss_id, a.school
    FROM wow_db.abilities a
    INNER JOIN wow_db.creatures c ON a.creature_id = c.id
)
SELECT r.name AS raid_name, b.name AS boss_name
FROM (
    SELECT boss_id, COUNT(*) AS quantity
    FROM a_c_joined
    GROUP BY boss_id
) AS boss_abilities_quantity
INNER JOIN (
    SELECT boss_id, COUNT(*) AS quantity
    FROM a_c_joined
    WHERE school = 'Огонь'
    GROUP BY boss_id
) AS boss_fire_abilities_quantity
ON boss_abilities_quantity.boss_id = boss_fire_abilities_quantity.boss_id
    AND boss_abilities_quantity.quantity < boss_fire_abilities_quantity.quantity * 2
INNER JOIN wow_db.bosses b ON boss_abilities_quantity.boss_id = b.id
INNER JOIN wow_db.raids r ON b.raid_id = r.id;

-- Рейды, в которых есть хотя бы одно существо-элементаль:
-- вывести названия рейдов
SELECT r.name AS raid_name
FROM wow_db.raids r
INNER JOIN (
    SELECT r1.id
    FROM wow_db.creatures c
    INNER JOIN wow_db.bosses b ON c.boss_id = b.id
    INNER JOIN wow_db.raids r1 ON b.raid_id = r1.id
    WHERE c.type = 'Элементаль'
    GROUP BY r1.id
    HAVING(COUNT(*) > 0)
) AS raids_with_elementals
ON r.id = raids_with_elementals.id;
