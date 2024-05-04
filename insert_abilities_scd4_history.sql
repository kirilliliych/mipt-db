INSERT INTO wow_db.abilities_SCD4_history(id,
                                          creature_id,
                                          name,
                                          range,
                                          radius,
                                          damage_at_once,
                                          duration,
                                          period,
                                          cast_time,
                                          school,
                                          valid_from) VALUES
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Вспышка магмы' AND c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Недра' AND r.location = 'Пылающие степи'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Недра' AND r.location = 'Пылающие степи'),
  'Вспышка магмы', 30000, 0, 800, 0, 0, 1, 'Огонь', '2004-11-23'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Гнев Рагнароса' AND c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Недра' AND r.location = 'Пылающие степи'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Недра' AND r.location = 'Пылающие степи'),
  'Гнев Рагнароса', 0, 25, 300, 0, 0, 0, 'Огонь', '2004-11-23'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Первородный огонь' AND c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Недра' AND r.location = 'Пылающие степи'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Недра' AND r.location = 'Пылающие степи'),
  'Первородный огонь', 25, 0, 124, 8, 1, 0, 'Огонь', '2004-11-23'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Иссечение' AND c.name = 'Иллидан Ярость Бури' AND b.name = 'Иллидан Ярость Бури' AND r.name = 'Черный храм' AND r.location = 'Долина Призрачной Луны'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Иллидан Ярость Бури' AND b.name = 'Иллидан Ярость Бури' AND r.name = 'Черный храм' AND r.location = 'Долина Призрачной Луны'),
  'Иссечение', 5, 0, 2000, 0, 0, 1.8, 'Физический урон', '2007-05-22'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Иссечение' AND c.name = 'Иллидан Ярость Бури' AND b.name = 'Иллидан Ярость Бури' AND r.name = 'Черный храм' AND r.location = 'Долина Призрачной Луны'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Иллидан Ярость Бури' AND b.name = 'Иллидан Ярость Бури' AND r.name = 'Черный храм' AND r.location = 'Долина Призрачной Луны'),
  'Иссечение', 5, 0, 1300, 0, 0, 1.5, 'Физический урон', '2008-03-25'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Вбирание души' AND c.name = 'Иллидан Ярость Бури' AND b.name = 'Иллидан Ярость Бури' AND r.name = 'Черный храм' AND r.location = 'Долина Призрачной Луны'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Иллидан Ярость Бури' AND b.name = 'Иллидан Ярость Бури' AND r.name = 'Черный храм' AND r.location = 'Долина Призрачной Луны'),
  'Вбирание души', 100, 25, 1000, 0, 0, 1.5, 'Тьма', '2007-05-22'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Вбирание души' AND c.name = 'Иллидан Ярость Бури' AND b.name = 'Иллидан Ярость Бури' AND r.name = 'Черный храм' AND r.location = 'Долина Призрачной Луны'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Иллидан Ярость Бури' AND b.name = 'Иллидан Ярость Бури' AND r.name = 'Черный храм' AND r.location = 'Долина Призрачной Луны'),
  'Вбирание души', 100, 20, 800, 0, 0, 1.5, 'Тьма', '2007-11-13'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Пламенная боль' AND c.name = 'Иллидан Ярость Бури' AND b.name = 'Иллидан Ярость Бури' AND r.name = 'Черный храм' AND r.location = 'Долина Призрачной Луны'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Иллидан Ярость Бури' AND b.name = 'Иллидан Ярость Бури' AND r.name = 'Черный храм' AND r.location = 'Долина Призрачной Луны'),
  'Пламенная боль', 30000, 5, 140, 60, 5, 1.5, 'Огонь', '2007-05-22'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Зловредность' AND c.name = 'Душа Нер''зула' AND b.name = 'Душа Нер''зула' AND r.name = 'Святилище Господства' AND r.location = 'Утроба'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Душа Нер''зула' AND b.name = 'Душа Нер''зула' AND r.name = 'Святилище Господства' AND r.location = 'Утроба'),
  'Зловредность', 300, 100, 15975, 21, 0, 1, 'Тьма', '2021-06-29'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Раскалывание' AND c.name = 'Душа Нер''зула' AND b.name = 'Душа Нер''зула' AND r.name = 'Святилище Господства' AND r.location = 'Утроба'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Душа Нер''зула' AND b.name = 'Душа Нер''зула' AND r.name = 'Святилище Господства' AND r.location = 'Утроба'),
  'Раскалывание', 100, 300, 47942, 0, 0, 2.6, 'Тьма', '2021-06-29'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Страдание' AND c.name = 'Душа Нер''зула' AND b.name = 'Душа Нер''зула' AND r.name = 'Святилище Господства' AND r.location = 'Утроба'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Душа Нер''зула' AND b.name = 'Душа Нер''зула' AND r.name = 'Святилище Господства' AND r.location = 'Утроба'),
  'Страдание', 30000, 300, 49364, 30, 0, 0, 'Тьма', '2021-06-29'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Страдание' AND c.name = 'Душа Нер''зула' AND b.name = 'Душа Нер''зула' AND r.name = 'Святилище Господства' AND r.location = 'Утроба'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Душа Нер''зула' AND b.name = 'Душа Нер''зула' AND r.name = 'Святилище Господства' AND r.location = 'Утроба'),
  'Страдание', 30000, 300, 55920, 30, 0, 0, 'Тьма', '2021-11-11'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Пробивающий выстрел' AND c.name = 'Адмирал Гар''ан' AND b.name = 'Железные леди' AND r.name = 'Литейная клана Черной горы' AND r.location = 'Горгронд'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Адмирал Гар''ан' AND b.name = 'Железные леди' AND r.name = 'Литейная клана Черной горы' AND r.location = 'Горгронд'),
  'Пробивающий выстрел', 500, 0, 50726, 0, 0, 0, 'Физический урон', '2015-02-24'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Пробивающий выстрел' AND c.name = 'Адмирал Гар''ан' AND b.name = 'Железные леди' AND r.name = 'Литейная клана Черной горы' AND r.location = 'Горгронд'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Адмирал Гар''ан' AND b.name = 'Железные леди' AND r.name = 'Литейная клана Черной горы' AND r.location = 'Горгронд'),
  'Пробивающий выстрел', 500, 0, 45269, 0, 0, 0, 'Физический урон', '2015-06-22'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Дрожащие тени' AND c.name = 'Сорка Отчаянная' AND b.name = 'Железные леди' AND r.name = 'Литейная клана Черной горы' AND r.location = 'Горгронд'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Сорка Отчаянная' AND b.name = 'Железные леди' AND r.name = 'Литейная клана Черной горы' AND r.location = 'Горгронд'),
  'Дрожащие тени', 30000, 0, 1111, 6, 2, 1, 'Тьма', '2015-02-24'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Ритуал крови' AND c.name = 'Марак Кровавая' AND b.name = 'Железные леди' AND r.name = 'Литейная клана Черной горы' AND r.location = 'Горгронд'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Марак Кровавая' AND b.name = 'Железные леди' AND r.name = 'Литейная клана Черной горы' AND r.location = 'Горгронд'),
  'Ритуал крови', 45, 25, 4445, 0, 0, 0, 'Тьма', '2015-02-24'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Морская порча' AND c.name = 'Хелия' AND b.name = 'Хелия' AND r.name = 'Испытание доблести' AND r.location = 'Штормхейм'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Хелия' AND b.name = 'Хелия' AND r.name = 'Испытание доблести' AND r.location = 'Штормхейм'),
  'Морская порча', 300, 0, 609, 12, 1, 0, 'Лед', '2016-10-24'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Морская порча' AND c.name = 'Хелия' AND b.name = 'Хелия' AND r.name = 'Испытание доблести' AND r.location = 'Штормхейм'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Хелия' AND b.name = 'Хелия' AND r.name = 'Испытание доблести' AND r.location = 'Штормхейм'),
  'Морская порча', 300, 0, 532, 12, 1, 0, 'Лед', '2017-01-06'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Морская порча' AND c.name = 'Хелия' AND b.name = 'Хелия' AND r.name = 'Испытание доблести' AND r.location = 'Штормхейм'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Хелия' AND b.name = 'Хелия' AND r.name = 'Испытание доблести' AND r.location = 'Штормхейм'),
  'Морская порча', 300, 0, 514, 12, 1, 0, 'Лед', '2017-03-25'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Ярость Утробы душ' AND c.name = 'Хелия' AND b.name = 'Хелия' AND r.name = 'Испытание доблести' AND r.location = 'Штормхейм'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Хелия' AND b.name = 'Хелия' AND r.name = 'Испытание доблести' AND r.location = 'Штормхейм'),
  'Ярость Утробы душ', 30000, 300, 486, 0, 0.5, 1, 'Лед', '2016-10-24'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Сфера коррозии' AND c.name = 'Хелия' AND b.name = 'Хелия' AND r.name = 'Испытание доблести' AND r.location = 'Штормхейм'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Хелия' AND b.name = 'Хелия' AND r.name = 'Испытание доблести' AND r.location = 'Штормхейм'),
  'Сфера коррозии', 30000, 8, 461, 11, 0.5, 11, 'Лед', '2016-10-24'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Зараженные когти' AND c.name = 'Цзи-Кунь' AND b.name = 'Цзи-Кунь' AND r.name = 'Престол Гроз' AND r.location = 'Остров Грома'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Цзи-Кунь' AND b.name = 'Цзи-Кунь' AND r.name = 'Престол Гроз' AND r.location = 'Остров Грома'),
  'Зараженные когти', 100, 0, 600, 10, 3, 0, 'Природа', '2013-04-09'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Карканье' AND c.name = 'Цзи-Кунь' AND b.name = 'Цзи-Кунь' AND r.name = 'Престол Гроз' AND r.location = 'Остров Грома'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Цзи-Кунь' AND b.name = 'Цзи-Кунь' AND r.name = 'Престол Гроз' AND r.location = 'Остров Грома'),
  'Карканье', 100, 8, 625, 0, 0, 2.5, 'Физический урон', '2013-04-09'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Карканье' AND c.name = 'Цзи-Кунь' AND b.name = 'Цзи-Кунь' AND r.name = 'Престол Гроз' AND r.location = 'Остров Грома'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Цзи-Кунь' AND b.name = 'Цзи-Кунь' AND r.name = 'Престол Гроз' AND r.location = 'Остров Грома'),
  'Карканье', 100, 8, 550, 0, 0, 2.5, 'Физический урон', '2014-08-20'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Перья' AND c.name = 'Цзи-Кунь' AND b.name = 'Цзи-Кунь' AND r.name = 'Престол Гроз' AND r.location = 'Остров Грома'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Цзи-Кунь' AND b.name = 'Цзи-Кунь' AND r.name = 'Престол Гроз' AND r.location = 'Остров Грома'),
  'Перья', 0, 500, 800, 8, 1, 2, 'Физический урон', '2013-04-09'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Перья' AND c.name = 'Цзи-Кунь' AND b.name = 'Цзи-Кунь' AND r.name = 'Престол Гроз' AND r.location = 'Остров Грома'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Цзи-Кунь' AND b.name = 'Цзи-Кунь' AND r.name = 'Престол Гроз' AND r.location = 'Остров Грома'),
  'Перья', 0, 500, 650, 8, 1, 2, 'Физический урон', '2014-08-20'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Удар Сульфураса' AND c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Просторы' AND r.location = 'Гора Хиджал'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Просторы' AND r.location = 'Гора Хиджал'),
  'Удар Сульфураса', 30000, 5, 7000, 0, 0, 2.5, 'Огонь', '2011-08-16'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Лавовая стрела' AND c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Просторы' AND r.location = 'Гора Хиджал'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Просторы' AND r.location = 'Гора Хиджал'),
  'Лавовая стрела', 30000, 0, 700, 6, 0, 0, 'Огонь', '2011-08-16'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Лавовая стрела' AND c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Просторы' AND r.location = 'Гора Хиджал'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Просторы' AND r.location = 'Гора Хиджал'),
  'Лавовая стрела', 30000, 0, 500, 6, 0, 0, 'Огонь', '2012-06-29'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Волна лавы' AND c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Просторы' AND r.location = 'Гора Хиджал'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Просторы' AND r.location = 'Гора Хиджал'),
  'Волна лавы', 100, 5, 900, 4, 1, 0, 'Огонь', '2011-08-16'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Волна лавы' AND c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Просторы' AND r.location = 'Гора Хиджал'),
(SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Рагнарос' AND b.name = 'Рагнарос' AND r.name = 'Огненные Просторы' AND r.location = 'Гора Хиджал'),
  'Волна лавы', 100, 5, 800, 4, 1, 0, 'Огонь', '2014-08-20'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Опаляющий свет' AND c.name = 'Разрушитель ХТ-002' AND b.name = 'Разрушитель ХТ-002' AND r.name = 'Ульдуар' AND r.location = 'Грозовая Гряда'),
(SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Разрушитель ХТ-002' AND b.name = 'Разрушитель ХТ-002' AND r.name = 'Ульдуар' AND r.location = 'Грозовая Гряда'),
  'Опаляющий свет', 500, 30, 300, 9, 1, 0, 'Свет', '2009-04-14'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Тяжелый шаг' AND c.name = 'Разрушитель ХТ-002' AND b.name = 'Разрушитель ХТ-002' AND r.name = 'Ульдуар' AND r.location = 'Грозовая Гряда'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Разрушитель ХТ-002' AND b.name = 'Разрушитель ХТ-002' AND r.name = 'Ульдуар' AND r.location = 'Грозовая Гряда'),
  'Тяжелый шаг', 0, 30, 600, 0, 0, 0, 'Физический урон', '2009-04-14'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Область Бездны' AND c.name = 'Разрушитель ХТ-002' AND b.name = 'Разрушитель ХТ-002' AND r.name = 'Ульдуар' AND r.location = 'Грозовая Гряда'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Разрушитель ХТ-002' AND b.name = 'Разрушитель ХТ-002' AND r.name = 'Ульдуар' AND r.location = 'Грозовая Гряда'),
  'Область Бездны', 30000, 30, 400, 180, 2, 0, 'Тьма', '2009-04-14'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Вращающийся меч' AND c.name = 'Нура, Матерь Пламени' AND b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Нура, Матерь Пламени' AND b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
  'Вращающийся меч', 150, 30, 6130, 20, 1, 1.7, 'Огонь', '2017-08-22'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Вращающийся меч' AND c.name = 'Нура, Матерь Пламени' AND b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Нура, Матерь Пламени' AND b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
  'Вращающийся меч', 150, 30, 6610, 20, 1, 1.7, 'Огонь', '2018-01-12'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Касание Тьмы' AND c.name = 'Азара, Матерь Ночи' AND b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Азара, Матерь Ночи' AND b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
  'Касание Тьмы', 100, 0, 2562, 0, 0, 5, 'Тьма', '2017-08-22'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Касание Тьмы' AND c.name = 'Азара, Матерь Ночи' AND b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Азара, Матерь Ночи' AND b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
  'Касание Тьмы', 100, 0, 2291, 0, 0, 5, 'Тьма', '2017-10-16'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Морозная вспышка' AND c.name = 'Диима, Матерь Сумрака' AND b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Диима, Матерь Сумрака' AND b.name = 'Ковен шиварр' AND r.name = 'Анторус, Пылающий Трон' AND r.location = 'Пустоши Анторуса'),
  'Морозная вспышка', 45, 0, 6761, 20, 0, 0, 'Лед', '2017-08-22'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Выдох' AND c.name = 'Императорский визирь Зор''лок' AND b.name = 'Императорский визирь Зор''лок' AND r.name = 'Сердце Страха' AND r.location = 'Жуткие пустоши'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Императорский визирь Зор''лок' AND b.name = 'Императорский визирь Зор''лок' AND r.name = 'Сердце Страха' AND r.location = 'Жуткие пустоши'),
  'Выдох', 60, 0, 3000, 6, 0, 2, 'Физический урон', '2012-06-29'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Затухающий звук' AND c.name = 'Императорский визирь Зор''лок' AND b.name = 'Императорский визирь Зор''лок' AND r.name = 'Сердце Страха' AND r.location = 'Жуткие пустоши'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Императорский визирь Зор''лок' AND b.name = 'Императорский визирь Зор''лок' AND r.name = 'Сердце Страха' AND r.location = 'Жуткие пустоши'),
  'Затухающий звук', 0, 3, 1800, 12, 1.5, 2, 'Физический урон', '2012-06-29'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Затухающий звук' AND c.name = 'Императорский визирь Зор''лок' AND b.name = 'Императорский визирь Зор''лок' AND r.name = 'Сердце Страха' AND r.location = 'Жуткие пустоши'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Императорский визирь Зор''лок' AND b.name = 'Императорский визирь Зор''лок' AND r.name = 'Сердце Страха' AND r.location = 'Жуткие пустоши'),
  'Затухающий звук', 0, 3, 1700, 12, 1.5, 2, 'Физический урон', '2014-08-20'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Сила и мощь' AND c.name = 'Императорский визирь Зор''лок' AND b.name = 'Императорский визирь Зор''лок' AND r.name = 'Сердце Страха' AND r.location = 'Жуткие пустоши'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Императорский визирь Зор''лок' AND b.name = 'Императорский визирь Зор''лок' AND r.name = 'Сердце Страха' AND r.location = 'Жуткие пустоши'),
  'Сила и мощь', 0, 300, 1424, 10, 1, 2, 'Физический урон', '2012-06-29'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Сила и мощь' AND c.name = 'Императорский визирь Зор''лок' AND b.name = 'Императорский визирь Зор''лок' AND r.name = 'Сердце Страха' AND r.location = 'Жуткие пустоши'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Императорский визирь Зор''лок' AND b.name = 'Императорский визирь Зор''лок' AND r.name = 'Сердце Страха' AND r.location = 'Жуткие пустоши'),
  'Сила и мощь', 0, 300, 1572, 10, 1, 2, 'Физический урон', '2014-08-20'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Яростная буря' AND c.name = 'Дафия Перерожденная' AND b.name = 'Дафия Перерожденная' AND r.name = 'Хранилище Воплощений' AND r.location = 'Тальдразус'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Дафия Перерожденная' AND b.name = 'Дафия Перерожденная' AND r.name = 'Хранилище Воплощений' AND r.location = 'Тальдразус'),
  'Яростная буря', 100, 10, 73145, 0, 0, 0, 'Природа', '2022-10-25'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Яростная буря' AND c.name = 'Дафия Перерожденная' AND b.name = 'Дафия Перерожденная' AND r.name = 'Хранилище Воплощений' AND r.location = 'Тальдразус'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Дафия Перерожденная' AND b.name = 'Дафия Перерожденная' AND r.name = 'Хранилище Воплощений' AND r.location = 'Тальдразус'),
  'Яростная буря', 100, 10, 88145, 0, 0, 0, 'Природа', '2022-11-15'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Удар южного ветра' AND c.name = 'Дафия Перерожденная' AND b.name = 'Дафия Перерожденная' AND r.name = 'Хранилище Воплощений' AND r.location = 'Тальдразус'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Дафия Перерожденная' AND b.name = 'Дафия Перерожденная' AND r.name = 'Хранилище Воплощений' AND r.location = 'Тальдразус'),
  'Удар южного ветра', 100, 0, 220361, 55, 0, 1.5, 'Физический урон', '2022-10-25'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Яростный импульс' AND c.name = 'Дафия Перерожденная' AND b.name = 'Дафия Перерожденная' AND r.name = 'Хранилище Воплощений' AND r.location = 'Тальдразус'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Дафия Перерожденная' AND b.name = 'Дафия Перерожденная' AND r.name = 'Хранилище Воплощений' AND r.location = 'Тальдразус'),
  'Яростный импульс', 200, 6, 62825, 0, 0, 0, 'Природа', '2022-10-25'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Яростный импульс' AND c.name = 'Дафия Перерожденная' AND b.name = 'Дафия Перерожденная' AND r.name = 'Хранилище Воплощений' AND r.location = 'Тальдразус'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Дафия Перерожденная' AND b.name = 'Дафия Перерожденная' AND r.name = 'Хранилище Воплощений' AND r.location = 'Тальдразус'),
  'Яростный импульс', 200, 6, 44095, 0, 0, 0, 'Природа', '2023-05-02'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Теневое пламя' AND c.name = 'Нефариан' AND b.name = 'Нефариан' AND r.name = 'Логово Крыла Тьмы' AND r.location = 'Пылающие степи'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Нефариан' AND b.name = 'Нефариан' AND r.name = 'Логово Крыла Тьмы' AND r.location = 'Пылающие степи'),
  'Теневое пламя', 0, 45, 750, 0, 0, 2, 'Тьма', '2005-07-12'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Удар хвостом' AND c.name = 'Нефариан' AND b.name = 'Нефариан' AND r.name = 'Логово Крыла Тьмы' AND r.location = 'Пылающие степи'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Нефариан' AND b.name = 'Нефариан' AND r.name = 'Логово Крыла Тьмы' AND r.location = 'Пылающие степи'),
  'Удар хвостом', 0, 30, 786, 2, 0, 0, 'Физический урон', '2005-07-12'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Рассекающий удар' AND c.name = 'Нефариан' AND b.name = 'Нефариан' AND r.name = 'Логово Крыла Тьмы' AND r.location = 'Пылающие степи'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Нефариан' AND b.name = 'Нефариан' AND r.name = 'Логово Крыла Тьмы' AND r.location = 'Пылающие степи'),
  'Рассекающий удар', 5, 5, 750, 0, 0, 0, 'Тьма', '2005-07-12'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Ледяное копье' AND c.name = 'Хагара Владычица Штормов' AND b.name = 'Хагара Владычица Штормов' AND r.name = 'Душа Дракона' AND r.location = 'Танарис'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Хагара Владычица Штормов' AND b.name = 'Хагара Владычица Штормов' AND r.name = 'Душа Дракона' AND r.location = 'Танарис'),
  'Ледяное копье', 30000, 3, 934, 0, 0, 0, 'Лед', '2011-11-29'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Ледяное копье' AND c.name = 'Хагара Владычица Штормов' AND b.name = 'Хагара Владычица Штормов' AND r.name = 'Душа Дракона' AND r.location = 'Танарис'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Хагара Владычица Штормов' AND b.name = 'Хагара Владычица Штормов' AND r.name = 'Душа Дракона' AND r.location = 'Танарис'),
  'Ледяное копье', 30000, 3, 800, 0, 0, 0, 'Лед', '2012-08-28'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Расколотый лед' AND c.name = 'Хагара Владычица Штормов' AND b.name = 'Хагара Владычица Штормов' AND r.name = 'Душа Дракона' AND r.location = 'Танарис'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Хагара Владычица Штормов' AND b.name = 'Хагара Владычица Штормов' AND r.name = 'Душа Дракона' AND r.location = 'Танарис'),
  'Расколотый лед', 40, 0, 954, 4, 0, 1.4, 'Лед', '2011-11-29'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Расколотый лед' AND c.name = 'Хагара Владычица Штормов' AND b.name = 'Хагара Владычица Штормов' AND r.name = 'Душа Дракона' AND r.location = 'Танарис'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Хагара Владычица Штормов' AND b.name = 'Хагара Владычица Штормов' AND r.name = 'Душа Дракона' AND r.location = 'Танарис'),
  'Расколотый лед', 40, 0, 1522, 4, 0, 1.4, 'Лед', '2012-08-28'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Гроза' AND c.name = 'Хагара Владычица Штормов' AND b.name = 'Хагара Владычица Штормов' AND r.name = 'Душа Дракона' AND r.location = 'Танарис'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Хагара Владычица Штормов' AND b.name = 'Хагара Владычица Штормов' AND r.name = 'Душа Дракона' AND r.location = 'Танарис'),
  'Гроза', 300, 500, 296, 30, 1, 0, 'Природа', '2011-11-29'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Кулак волн' AND c.name = 'Великолепие Азшары' AND b.name = 'Великолепие Азшары' AND r.name = 'Вечный дворец' AND r.location = 'Назжатар'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Великолепие Азшары' AND b.name = 'Великолепие Азшары' AND r.name = 'Вечный дворец' AND r.location = 'Назжатар'),
  'Кулак волн', 100, 0, 8650, 20, 0, 2, 'Физический урон', '2019-06-25'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Древняя буря' AND c.name = 'Великолепие Азшары' AND b.name = 'Великолепие Азшары' AND r.name = 'Вечный дворец' AND r.location = 'Назжатар'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Великолепие Азшары' AND b.name = 'Великолепие Азшары' AND r.name = 'Вечный дворец' AND r.location = 'Назжатар'),
  'Древняя буря', 30000, 50, 866, 3600, 2, 3, 'Лед', '2019-06-25'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Чародейская бомба' AND c.name = 'Великолепие Азшары' AND b.name = 'Великолепие Азшары' AND r.name = 'Вечный дворец' AND r.location = 'Назжатар'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Великолепие Азшары' AND b.name = 'Великолепие Азшары' AND r.name = 'Вечный дворец' AND r.location = 'Назжатар'),
  'Чародейская бомба', 5, 10, 7936, 6, 0, 10, 'Тьма', '2019-06-25'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Огненная глыба' AND c.name = 'Кель''тас Солнечный Скиталец' AND b.name = 'Кель''тас Солнечный Скиталец' AND r.name = 'Крепость Бурь' AND r.location = 'Пустоверть'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Кель''тас Солнечный Скиталец' AND b.name = 'Кель''тас Солнечный Скиталец' AND r.name = 'Крепость Бурь' AND r.location = 'Пустоверть'),
  'Огненная глыба', 40, 0, 620, 0, 0, 4, 'Огонь', '2006-12-05'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Чародейское разрушение' AND c.name = 'Кель''тас Солнечный Скиталец' AND b.name = 'Кель''тас Солнечный Скиталец' AND r.name = 'Крепость Бурь' AND r.location = 'Пустоверть'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Кель''тас Солнечный Скиталец' AND b.name = 'Кель''тас Солнечный Скиталец' AND r.name = 'Крепость Бурь' AND r.location = 'Пустоверть'),
  'Чародейское разрушение', 0, 300, 930, 10, 0, 0, 'Тайная магия', '2006-12-05'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Контроль над разумом' AND c.name = 'Кель''тас Солнечный Скиталец' AND b.name = 'Кель''тас Солнечный Скиталец' AND r.name = 'Крепость Бурь' AND r.location = 'Пустоверть'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Кель''тас Солнечный Скиталец' AND b.name = 'Кель''тас Солнечный Скиталец' AND r.name = 'Крепость Бурь' AND r.location = 'Пустоверть'),
  'Контроль над разумом', 30000, 0, 0, 30, 0, 0, 'Тьма', '2006-12-05'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Брызги' AND c.name = 'Лэй Ши' AND b.name = 'Лэй Ши' AND r.name = 'Терраса Вечной Весны' AND r.location = 'Сокрытая лестница'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Лэй Ши' AND b.name = 'Лэй Ши' AND r.name = 'Терраса Вечной Весны' AND r.location = 'Сокрытая лестница'),
  'Брызги', 30000, 2.5, 1529, 0, 10, 1.2, 'Лед', '2012-12-07'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Брызги' AND c.name = 'Лэй Ши' AND b.name = 'Лэй Ши' AND r.name = 'Терраса Вечной Весны' AND r.location = 'Сокрытая лестница'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Лэй Ши' AND b.name = 'Лэй Ши' AND r.name = 'Терраса Вечной Весны' AND r.location = 'Сокрытая лестница'),
  'Брызги', 30000, 2.5, 1529, 0, 10, 1.2, 'Лед', '2014-08-20'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Защита' AND c.name = 'Лэй Ши' AND b.name = 'Лэй Ши' AND r.name = 'Терраса Вечной Весны' AND r.location = 'Сокрытая лестница'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Лэй Ши' AND b.name = 'Лэй Ши' AND r.name = 'Терраса Вечной Весны' AND r.location = 'Сокрытая лестница'),
  'Защита', 30000, 0, 0, 0, 0, 0, 'Лед', '2012-12-07'),
((SELECT DISTINCT a.id FROM wow_db.abilities a
  INNER JOIN wow_db.creatures c ON a.creature_id = c.id
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE a.name = 'Спрятаться' AND c.name = 'Лэй Ши' AND b.name = 'Лэй Ши' AND r.name = 'Терраса Вечной Весны' AND r.location = 'Сокрытая лестница'),
 (SELECT DISTINCT c.id FROM wow_db.creatures c
  INNER JOIN wow_db.bosses b ON c.boss_id = b.id
  INNER JOIN wow_db.raids r ON b.raid_id = r.id
  WHERE c.name = 'Лэй Ши' AND b.name = 'Лэй Ши' AND r.name = 'Терраса Вечной Весны' AND r.location = 'Сокрытая лестница'),
  'Спрятаться', 0, 0, 0, 0, 0, 0, 'Физический урон', '2012-12-07');