INSERT INTO wow_db.abilities(creature_id,
                             name,
                             range,
                             radius,
                             damage_at_once,
                             duration,
                             period,
                             cast_time,
                             school) VALUES
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Недра' AND r.location = 'Пылающие степи'),
  'Вспышка магмы', 30000, 0, 900, 0, 0, 1, 'Огонь'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Недра' AND r.location = 'Пылающие степи'),
  'Гнев Рагнароса', 0, 25, 300, 0, 0, 0, 'Огонь'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Недра' AND r.location = 'Пылающие степи'),
  'Первородный огонь', 25, 0, 124, 8, 1, 0, 'Огонь'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Иллидан Ярость Бури' AND b.name = 'Иллидан Ярость Бури' AND r.name = 'Черный храм' AND r.location = 'Долина Призрачной Луны'),
  'Иссечение', 5, 0, 1300, 0, 0, 1.5, 'Физический урон'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Иллидан Ярость Бури' AND b.name = 'Иллидан Ярость Бури' AND r.name = 'Черный храм' AND r.location = 'Долина Призрачной Луны'),
  'Вбирание души', 100, 70, 800, 0, 0, 1.5, 'Тьма'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Иллидан Ярость Бури' AND b.name = 'Иллидан Ярость Бури' AND r.name = 'Черный храм' AND r.location = 'Долина Призрачной Луны'),
  'Пламенная боль', 30000, 5, 140, 60, 5, 1.5, 'Огонь'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Душа Нер''зула' AND b.name = 'Душа Нер''зула' AND r.name = 'Святилище Господства' AND r.location = 'Утроба'),
  'Зловредность', 300, 100, 15975, 21, 0, 1, 'Тьма'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Душа Нер''зула' AND b.name = 'Душа Нер''зула' AND r.name = 'Святилище Господства' AND r.location = 'Утроба'),
  'Раскалывание', 100, 300, 47942, 0, 0, 2.6, 'Тьма'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Душа Нер''зула' AND b.name = 'Душа Нер''зула' AND r.name = 'Святилище Господства' AND r.location = 'Утроба'),
  'Страдание', 30000, 300, 55920, 30, 0, 0, 'Тьма'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Адмирал Гар''ан' AND b.name = 'Железные леди' AND r.name = 'Литейная клана Черной горы' AND r.location = 'Горгронд'),
  'Пробивающий выстрел', 500, 0, 45269, 0, 0, 0, 'Физический урон'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Сорка Отчаянная' AND b.name = 'Железные леди' AND r.name = 'Литейная клана Черной горы' AND r.location = 'Горгронд'),
  'Дрожащие тени', 30000, 0, 1111, 6, 2, 1, 'Физический урон'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Марак Кровавая' AND b.name = 'Железные леди' AND r.name = 'Литейная клана Черной горы' AND r.location = 'Горгронд'),
  'Ритуал крови', 45, 25, 4445, 0, 0, 0, 'Тьма'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Хелия' AND b.name = 'Хелия' AND r.name = 'Испытание доблести' AND r.location = 'Штормхейм'),
  'Морская порча', 300, 0, 514, 12, 1, 0, 'Лед'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Хелия' AND b.name = 'Хелия' AND r.name = 'Испытание доблести' AND r.location = 'Штормхейм'),
  'Ярость Утробы душ', 30000, 300, 486, 0, 0.5, 1, 'Лед'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Хелия' AND b.name = 'Хелия' AND r.name = 'Испытание доблести' AND r.location = 'Штормхейм'),
  'Сфера коррозии', 30000, 8, 461, 11, 0.5, 11, 'Лед'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Цзи-Кунь' AND b.name = 'Цзи-Кунь' AND r.name = 'Престол Гроз' AND r.location = 'Остров Грома'),
  'Зараженные когти', 100, 0, 600, 10, 3, 0, 'Природа'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Цзи-Кунь' AND b.name = 'Цзи-Кунь' AND r.name = 'Престол Гроз' AND r.location = 'Остров Грома'),
  'Карканье', 100, 8, 550, 0, 0, 2.5, 'Физический урон'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Цзи-Кунь' AND b.name = 'Цзи-Кунь' AND r.name = 'Престол Гроз' AND r.location = 'Остров Грома'),
  'Перья', 0, 500, 400, 8, 1, 2, 'Физический урон'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Просторы' AND r.location = 'Гора Хиджал'),
  'Удар Сульфураса', 30000, 5, 7000, 0, 0, 2.5, 'Огонь'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Просторы' AND r.location = 'Гора Хиджал'),
  'Лавовая стрела', 30000, 0, 500, 6, 0, 0, 'Огонь'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Просторы' AND r.location = 'Гора Хиджал'),
  'Волна лавы', 100, 5, 800, 4, 1, 0, 'Огонь'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Разрушитель ХТ-002' AND b.name = 'Разрушитель ХТ-002' AND r.name = 'Ульдуар' AND r.location = 'Грозовая Гряда'),
  'Опаляющий свет', 500, 30, 300, 9, 1, 0, 'Свет'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Разрушитель ХТ-002' AND b.name = 'Разрушитель ХТ-002' AND r.name = 'Ульдуар' AND r.location = 'Грозовая Гряда'),
  'Тяжелый шаг', 0, 30, 600, 0, 0, 0, 'Физический урон'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Разрушитель ХТ-002' AND b.name = 'Разрушитель ХТ-002' AND r.name = 'Ульдуар' AND r.location = 'Грозовая Гряда'),
  'Область Бездны', 30000, 30, 400, 180, 2, 0, 'Тьма'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Нура, Матерь Пламени' AND b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
  'Вращающийся меч', 150, 30, 6610, 20, 1, 1.7, 'Огонь'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Азара, Матерь Ночи' AND b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
  'Касание Тьмы', 100, 0, 2291, 0, 0, 5, 'Тьма'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Диима, Матерь Сумрака' AND b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
  'Морозная вспышка', 45, 0, 6761, 20, 0, 0, 'Лед'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Императорский визирь Зор''лок' AND b.name = 'Императорский визирь Зор''лок' AND r.name = 'Сердце Страха' AND r.location = 'Жуткие пустоши'),
  'Выдох', 60, 0, 3000, 6, 0, 2, 'Физический урон'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Императорский визирь Зор''лок' AND b.name = 'Императорский визирь Зор''лок' AND r.name = 'Сердце Страха' AND r.location = 'Жуткие пустоши'),
  'Затухающий звук', 0, 3, 1700, 12, 1.5, 2, 'Физический урон'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Императорский визирь Зор''лок' AND b.name = 'Императорский визирь Зор''лок' AND r.name = 'Сердце Страха' AND r.location = 'Жуткие пустоши'),
  'Сила и мощь', 0, 300, 1572, 10, 1, 2, 'Физический урон'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Дафия Перерожденная' AND b.name = 'Дафия Перерожденная' AND r.name = 'Хранилище Воплощений' AND r.location = 'Тальдразус'),
  'Яростная буря', 100, 10, 88145, 0, 0, 0, 'Природа'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Дафия Перерожденная' AND b.name = 'Дафия Перерожденная' AND r.name = 'Хранилище Воплощений' AND r.location = 'Тальдразус'),
  'Удар южного ветра', 100, 0, 220361, 55, 0, 1.5, 'Физический урон'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Дафия Перерожденная' AND b.name = 'Дафия Перерожденная' AND r.name = 'Хранилище Воплощений' AND r.location = 'Тальдразус'),
  'Яростный импульс', 200, 6, 44095, 0, 0, 0, 'Природа'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Нефариан' AND b.name = 'Нефариан' AND r.name = 'Логово Крыла Тьмы' AND r.location = 'Пылающие степи'),
  'Теневое пламя', 0, 45, 750, 0, 0, 2, 'Тьма'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Нефариан' AND b.name = 'Нефариан' AND r.name = 'Логово Крыла Тьмы' AND r.location = 'Пылающие степи'),
  'Удар хвостом', 0, 30, 786, 2, 0, 0, 'Физический урон'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Нефариан' AND b.name = 'Нефариан' AND r.name = 'Логово Крыла Тьмы' AND r.location = 'Пылающие степи'),
  'Рассекающий удар', 5, 5, 750, 0, 0, 0, 'Тьма'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Хагара Владычица Штормов' AND b.name = 'Хагара Владычица Штормов' AND r.name = 'Душа Дракона' AND r.location = 'Танарис'),
  'Ледяное копье', 30000, 3, 1000, 0, 0, 0, 'Лед'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Хагара Владычица Штормов' AND b.name = 'Хагара Владычица Штормов' AND r.name = 'Душа Дракона' AND r.location = 'Танарис'),
  'Расколотый лед', 40, 0, 2522, 4, 0, 1.4, 'Лед'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Хагара Владычица Штормов' AND b.name = 'Хагара Владычица Штормов' AND r.name = 'Душа Дракона' AND r.location = 'Танарис'),
  'Гроза', 300, 500, 296, 30, 1, 0, 'Природа'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Великолепие Азшары' AND b.name = 'Великолепие Азшары' AND r.name = 'Вечный дворец' AND r.location = 'Назжатар'),
  'Кулак волн', 100, 0, 8650, 20, 0, 2, 'Физический урон'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Великолепие Азшары' AND b.name = 'Великолепие Азшары' AND r.name = 'Вечный дворец' AND r.location = 'Назжатар'),
  'Древняя буря', 30000, 50, 866, 3600, 2, 3, 'Лед'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Великолепие Азшары' AND b.name = 'Великолепие Азшары' AND r.name = 'Вечный дворец' AND r.location = 'Назжатар'),
  'Чародейская бомба', 5, 10, 7936, 6, 0, 10, 'Тьма'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Кель''тас Солнечный Скиталец' AND b.name = 'Кель''тас Солнечный Скиталец' AND r.name = 'Крепость Бурь' AND r.location = 'Пустоверть'),
  'Огненная глыба', 40, 0, 620, 0, 0, 4, 'Огонь'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Кель''тас Солнечный Скиталец' AND b.name = 'Кель''тас Солнечный Скиталец' AND r.name = 'Крепость Бурь' AND r.location = 'Пустоверть'),
  'Чародейское разрушение', 0, 300, 930, 10, 0, 0, 'Тайная магия'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Кель''тас Солнечный Скиталец' AND b.name = 'Кель''тас Солнечный Скиталец' AND r.name = 'Крепость Бурь' AND r.location = 'Пустоверть'),
  'Контроль над разумом', 30000, 0, 0, 30, 0, 0, 'Тьма'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Лэй Ши' AND b.name = 'Лэй Ши' AND r.name = 'Терраса Вечной Весны' AND r.location = 'Сокрытая лестница'),
  'Брызги', 30000, 2.5, 1529, 0, 10, 1.2, 'Лед'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Лэй Ши' AND b.name = 'Лэй Ши' AND r.name = 'Терраса Вечной Весны' AND r.location = 'Сокрытая лестница'),
  'Защита', 30000, 0, 0, 0, 0, 0, 'Лед'),
((SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Лэй Ши' AND b.name = 'Лэй Ши' AND r.name = 'Терраса Вечной Весны' AND r.location = 'Сокрытая лестница'),
  'Спрятаться', 0, 0, 0, 0, 0, 0, 'Физический урон');