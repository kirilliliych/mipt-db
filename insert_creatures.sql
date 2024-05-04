INSERT INTO wow_db.creatures(boss_id, name, type, health, resource_type, resource_max) VALUES
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Рагнарос' AND r.name = 'Огненные Недра' AND r.location = 'Пылающие степи'),
  'Рагнарос', 'Элементаль', 309923, NULL, 0),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Иллидан Ярость Бури' AND r.name = 'Черный храм' AND r.location = 'Долина Призрачной Луны'),
  'Иллидан Ярость Бури', 'Демон', 352578, 'Мана', 387),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Душа Нер''зула' AND r.name = 'Святилище Господства' AND r.location = 'Утроба'),
  'Душа Нер''зула', 'Нежить', 9456650, 'Энергия', 100),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Железные леди' AND r.name = 'Литейная клана Черной горы' AND r.location = 'Горгронд'),
  'Адмирал Гар''ан', 'Гуманоид', 634543, 'Железная ярость', 100),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Железные леди' AND r.name = 'Литейная клана Черной горы' AND r.location = 'Горгронд'),
  'Сорка Отчаянная', 'Гуманоид', 634543, 'Железная ярость', 100),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Железные леди' AND r.name = 'Литейная клана Черной горы' AND r.location = 'Горгронд'),
  'Марак Кровавая', 'Гуманоид', 634543, 'Железная ярость', 100),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Хелия' AND r.name = 'Испытание доблести' AND r.location = 'Штормхейм'),
  'Хелия', 'Гуманоид', 1099230, NULL, 0),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Цзи-Кунь' AND r.name = 'Престол Гроз' AND r.location = 'Остров Грома'),
  'Цзи-Кунь', 'Животное', 707840, NULL, 0),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Рагнарос' AND r.name = 'Огненные Просторы' AND r.location = 'Гора Хиджал'),
  'Рагнарос', 'Элементаль', 1848600, NULL, 0),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Разрушитель ХТ-002' AND r.name = 'Ульдуар' AND r.location = 'Грозовая Гряда'),
  'Разрушитель ХТ-002', 'Механизм', 704771, NULL, 0),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
  'Нура, Матерь Пламени', 'Демон', 3764880, NULL, 0),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
  'Азара, Матерь Ночи', 'Демон', 3764880, NULL, 0),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
  'Диима, Матерь Сумрака', 'Демон', 3764880, NULL, 0),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Императорский визирь Зор''лок' AND r.name = 'Сердце Страха' AND r.location = 'Жуткие пустоши'),
  'Императорский визирь Зор''лок', 'Гуманоид', 568800, NULL, 0),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Дафия Перерожденная' AND r.name = 'Хранилище Воплощений' AND r.location = 'Тальдразус'),
  'Дафия Перерожденная', 'Элементаль', 75070530, 'Энергия', 100),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Нефариан' AND r.name = 'Логово Крыла Тьмы' AND r.location = 'Пылающие степи'),
  'Нефариан', 'Драконид', 365150, NULL, 0),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Хагара Владычица Штормов' AND r.name = 'Душа Дракона' AND r.location = 'Танарис'),
  'Хагара Владычица Штормов', 'Гуманоид', 821000, 'Мана', 3500),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Великолепие Азшары' AND r.name = 'Вечный дворец' AND r.location = 'Назжатар'),
  'Великолепие Азшары', 'Элементаль', 3338100, 'Энергия', 100),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Кель''тас Солнечный Скиталец' AND r.name = 'Крепость Бурь' AND r.location = 'Пустоверть'),
  'Кель''тас Солнечный Скиталец', 'Гуманоид', 329400, 'Энергия', 100),
((SELECT DISTINCT b.id FROM wow_db.bosses b
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE b.name = 'Лэй Ши' AND r.name = 'Терраса Вечной Весны' AND r.location = 'Сокрытая лестница'),
  'Лэй Ши', 'Элементаль', 450400, NULL, 0);