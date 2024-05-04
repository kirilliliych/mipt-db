INSERT INTO wow_db.raids_x_guilds(raid_id, guild_id, race_order, date) VALUES
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Огненные Недра' AND location = 'Пылающие степи'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Ascent' AND server = 'Thrall-US'),
  1, '2005-04-25'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Огненные Недра' AND location = 'Пылающие степи'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Afterlife' AND server = 'Cenarius-US'),
  2, '2005-04-27'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Огненные Недра' AND location = 'Пылающие степи'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Conquest' AND server = 'Kilrogg-US'),
  3, '2005-05-02'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Логово Крыла Тьмы' AND location = 'Пылающие степи'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Drama' AND server = 'Kalesgos-US'),
  1, '2005-09-26'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Логово Крыла Тьмы' AND location = 'Пылающие степи'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Fury' AND server = 'Medivh-US'),
  2, '2005-10-14'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Черный храм' AND location = 'Долина Призрачной Луны'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Nihilum' AND server = 'Magtheridon-EU'),
  1, '2007-06-05'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Черный храм' AND location = 'Долина Призрачной Луны'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Last Resort' AND server = 'Kazzak-EU'),
  2, '2007-06-24'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Черный храм' AND location = 'Долина Призрачной Луны'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'For the Horde' AND server = 'Destromath-EU'),
  5, '2007-06-29'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Крепость Бурь' AND location = 'Пустоверть'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Nihilum' AND server = 'Magtheridon-EU'),
  1, '2007-05-25'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Крепость Бурь' AND location = 'Пустоверть'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Last Resort' AND server = 'Kazzak-EU'),
  4, '2007-05-27'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Крепость Бурь' AND location = 'Пустоверть'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Death and Taxes' AND server = 'Korgath-US'),
  5, '2007-05-27'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Крепость Бурь' AND location = 'Пустоверть'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Method' AND server = 'Sylvanas-EU'),
  10, '2007-05-31'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Ульдуар' AND location = 'Грозовая Гряда'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Ensidia' AND server = 'Magtheridon-EU'),
  1, '2009-04-16'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Ульдуар' AND location = 'Грозовая Гряда'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Vodka' AND server = 'Alterac Mountains-US'),
  2, '2009-04-16'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Огненные Просторы' AND location = 'Гора Хиджал'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Paragon' AND server = 'Lightning''s Blade-EU'),
  1, '2011-07-19'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Огненные Просторы' AND location = 'Гора Хиджал'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Method' AND server = 'Sylvanas-EU'),
  2, '2011-07-20'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Огненные Просторы' AND location = 'Гора Хиджал'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Premonition' AND server = 'Sen''jin-US'),
  8, '2011-07-21'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Душа Дракона' AND location = 'Танарис'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'KIN Raiders' AND server = 'Blackmoore-KR'),
  1, '2011-12-20'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Душа Дракона' AND location = 'Танарис'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Blood Legion' AND server = 'Illidan-US'),
  3, '2011-12-20'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Сердце Страха' AND location = 'Жуткие пустоши'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Blood Legion' AND server = 'Illidan-US'),
  1, '2012-11-11'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Сердце Страха' AND location = 'Жуткие пустоши'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Method' AND server = 'Sylvanas-EU'),
  2, '2012-11-11'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Терраса Вечной Весны' AND location = 'Сокрытая лестница'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Method' AND server = 'Sylvanas-EU'),
  1, '2012-11-25'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Терраса Вечной Весны' AND location = 'Сокрытая лестница'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Blood Legion' AND server = 'Illidan-US'),
  2, '2012-11-25'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Престол Гроз' AND location = 'Остров Грома'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Method' AND server = 'Sylvanas-EU'),
  1, '2013-03-26'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Престол Гроз' AND location = 'Остров Грома'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Exodus' AND server = 'Illidan-US'),
  2, '2013-03-27'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Престол Гроз' AND location = 'Остров Грома'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Blood Legion' AND server = 'Illidan-US'),
  3, '2013-03-27'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Литейная клана Черной горы' AND location = 'Горгронд'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Method' AND server = 'Sylvanas-EU'),
  1, '2015-02-20'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Литейная клана Черной горы' AND location = 'Горгронд'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Midwinter' AND server = 'Area 52-US'),
  5, '2015-02-21'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Литейная клана Черной горы' AND location = 'Горгронд'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Ascension' AND server = 'Frostmourne-OC'),
  10, '2015-02-22'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Испытание доблести' AND location = 'Штормхейм'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Method' AND server = 'Sylvanas-EU'),
  1, '2016-11-18'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Испытание доблести' AND location = 'Штормхейм'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Limit' AND server = 'Illidan-US'),
  2, '2016-11-18'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Испытание доблести' AND location = 'Штормхейм'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'SNF' AND server = 'Sargeras-US'),
  7, '2016-11-19'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Анторус, Пылающий Трон' AND location = 'Пустоши Анторуса'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Method' AND server = 'Sylvanas-EU'),
  1, '2017-12-13'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Анторус, Пылающий Трон' AND location = 'Пустоши Анторуса'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Limit' AND server = 'Illidan-US'),
  2, '2017-12-13'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Анторус, Пылающий Трон' AND location = 'Пустоши Анторуса'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Экзорсус' AND server = 'Ревущий фьорд-EU'),
  5, '2017-12-13'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Анторус, Пылающий Трон' AND location = 'Пустоши Анторуса'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Big Dumb Guild' AND server = 'Illidan-US'),
  9, '2017-12-14'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Вечный дворец' AND location = 'Назжатар'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Method' AND server = 'Sylvanas-EU'),
  1, '2019-07-28'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Вечный дворец' AND location = 'Назжатар'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Limit' AND server = 'Illidan-US'),
  2, '2019-07-28'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Святилище Господства' AND location = 'Утроба'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Echo' AND server = 'Tarren Mill-EU'),
  1, '2021-07-20'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Святилище Господства' AND location = 'Утроба'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Liquid' AND server = 'Illidan-US'),
  2, '2021-07-20'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Хранилище Воплощений' AND location = 'Тальдразус'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Echo' AND server = 'Tarren Mill-EU'),
  1, '2022-12-23'),
((SELECT DISTINCT id FROM wow_db.raids WHERE name = 'Хранилище Воплощений' AND location = 'Тальдразус'),
 (SELECT DISTINCT id FROM wow_db.guilds WHERE name = 'Liquid' AND server = 'Illidan-US'),
  2, '2022-12-23');