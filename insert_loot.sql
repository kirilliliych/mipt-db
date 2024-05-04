INSERT INTO wow_db.loot(boss_id,
                        name,
                        item_level,
                        type,
                        slot,
                        armor,
                        damage_per_second,
                        attack_speed,
                        strength,
                        agility,
                        intellect,
                        stamina,
                        critical_strike,
                        haste,
                        mastery,
                        versatility,
                        drop_rate) VALUES
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Рагнарос' AND r.name = 'Огненные Недра' AND r.location = 'Пылающие степи'),
  'Защита Малистара', 29, 'Щит', 'Левая рука', 42, 0, 0, 2, 0, 5, 2, 0, 0, 0, 3, 15),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Иллидан Ярость Бури' AND r.name = 'Черный храм' AND r.location = 'Долина Призрачной Луны'),
  'Черный лук Предателя', 33, 'Лук', 'Дальний бой', 0, 2.5, 3.00, 0, 4, 0, 0, 5, 0, 0, 0, 27),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Душа Нер''зула' AND r.name = 'Святилище Господства' AND r.location = 'Утроба'),
  'Колпак извивающегося зла', 226, 'Кожаные', 'Голова', 75, 0, 0, 0, 81, 81, 191, 0, 87, 0, 46, 3),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Железные леди' AND r.name = 'Литейная клана Черной горы' AND r.location = 'Горгронд'),
  'Веревочный пояс матроса', 44, 'Тканевые', 'Пояс', 3, 0, 0, 0, 0, 4, 6, 3, 0, 4, 0, 13),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Хелия' AND r.name = 'Испытание доблести' AND r.location = 'Штормхейм'),
  'Подвеска с морским веером', 50, 'Амулет', 'Шея', 0, 0, 0, 0, 0, 0, 5, 0, 0, 7, 11, NULL),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Цзи-Кунь' AND r.name = 'Престол Гроз' AND r.location = 'Остров Грома'),
  'Легендарное перо Цзи-Кунь', 40, 'Аксессуар', 'Аксессуар', 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 13),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Рагнарос' AND r.name = 'Огненные Просторы' AND r.location = 'Гора Хиджал'),
  'Дымящееся яйцо Миллазор', 30, 'Средство передвижения', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Разрушитель ХТ-002' AND r.name = 'Ульдуар' AND r.location = 'Грозовая Гряда'),
  'Латные наплечники разрушителя', 35, 'Латные', 'Плечи', 11, 0, 0, 3, 0, 3, 4, 2, 0, 0, 3, 20),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
  'Кольцо рьяного мучителя', 50, 'Кольцо', 'Палец', 0, 0, 0, 0, 0, 0, 5, 7, 11, 0, 0, NULL),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Императорский визирь Зор''лок' AND r.name = 'Сердце Страха' AND r.location = 'Жуткие пустоши'),
  'Кор''тик-роевичок', 1, 'Спутник', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Дафия Перерожденная' AND r.name = 'Хранилище Воплощений' AND r.location = 'Тальдразус'),
  'Лихие перепрыгиватели оврагов', 395, 'Кольчужные', 'Ступни', 439, 0, 0, 0, 293, 293, 939, 0, 355, 0, 151, 20),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Нефариан' AND r.name = 'Логово Крыла Тьмы' AND r.location = 'Пылающие степи'),
  'Плащ Мрачного лорда', 29, 'Спина', 'Спина', 3, 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 15),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Хагара Владычица Штормов' AND r.name = 'Душа Дракона' AND r.location = 'Танарис'),
  'Кинжал заряженного крыла', 37, 'Кинжал', 'Одноручное', 0, 2.2, 1.80, 0, 1, 0, 3, 0, 2, 0, 0, 7),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Великолепие Азшары' AND r.name = 'Вечный дворец' AND r.location = 'Назжатар'),
  'Перчатки высвобожденной магии', 72, 'Тканевые', 'Кисти рук', 5, 0, 0, 0, 0, 8, 12, 0, 9, 7, 0, NULL),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Кель''тас Солнечный Скиталец' AND r.name = 'Крепость Бурь' AND r.location = 'Пустоверть'),
  'Поножи Солнечного Ястреба', 32, 'Кольчужные', 'Ноги', 9, 0, 0, 0, 3, 3, 4, 0, 0, 0, 3, 12),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
WHERE b.name = 'Кель''тас Солнечный Скиталец' AND r.name = 'Крепость Бурь' AND r.location = 'Пустоверть'),
  'Пепел Ал''ара', 30, 'Средство передвижения', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.4),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Лэй Ши' AND r.name = 'Терраса Вечной Весны' AND r.location = 'Сокрытая лестница'),
  'Таорен, сжигатель душ', 39, 'Огнестрельное', 'Дальний бой', 0, 3.2, 3.00, 0, 4, 0, 7, 0, 4, 4, 0, NULL);