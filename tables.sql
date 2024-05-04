CREATE SCHEMA wow_db;

DROP TABLE IF EXISTS wow_db.raids CASCADE;
CREATE TABLE wow_db.raids(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    level SMALLINT NOT NULL CHECK(level > 0),
    location VARCHAR(50) NOT NULL,
    bosses_quantity SMALLINT NOT NULL CHECK(bosses_quantity > 0),
    CONSTRAINT valid_name CHECK(name SIMILAR TO '[а-яА-Я]+((-[а-яА-Я]+)?(''[а-яА-Я]+)?((, [а-яА-Я]+)|( [а-яА-Я]+)|()))*'),
    CONSTRAINT vaild_location CHECK(location SIMILAR TO '[а-яА-Я]+((-[а-яА-Я]+)?(''[а-яА-Я]+)?((, [а-яА-Я]+)|( [а-яА-Я]+)|()))*')
);

DROP TABLE IF EXISTS wow_db.bosses CASCADE;
CREATE TABLE wow_db.bosses(
    id SERIAL PRIMARY KEY,
    raid_id INTEGER REFERENCES wow_db.raids(id) NOT NULL,
    name VARCHAR(50) NOT NULL,
    "order" SMALLINT NOT NULL CHECK("order" > 0),
    CONSTRAINT vaild_name CHECK(name SIMILAR TO '[а-яА-Я0-9]+((-[а-яА-Я0-9]+)?(''[а-яА-Я0-9]+)?((, [а-яА-Я0-9]+)|( [а-яА-Я0-9]+)|()))*')
);

DROP TABLE IF EXISTS wow_db.creatures CASCADE;
CREATE TABLE wow_db.creatures(
    id SERIAL PRIMARY KEY,
    boss_id INTEGER REFERENCES wow_db.bosses(id) NOT NULL,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(30) NOT NULL,
    health BIGINT NOT NULL CHECK(health > 0),
    resource_type VARCHAR(30),
    resource_max INTEGER NOT NULL CHECK(resource_max >= 0) DEFAULT 0
    CONSTRAINT valid_name CHECK(name SIMILAR TO '[а-яА-Я0-9]+((-[а-яА-Я0-9]+)?(''[а-яА-Я0-9]+)?((, [а-яА-Я0-9]+)|( [а-яА-Я0-9]+)|()))*'),
    CONSTRAINT valid_type CHECK(type SIMILAR TO '[а-яА-Я]+'),
    CONSTRAINT valid_resource_type CHECK(resource_type SIMILAR TO '[а-яА-Я]+( [а-яА-Я]+)*')
);

CREATE TYPE equipment_slots as ENUM('Голова',
                                    'Шея',
                                    'Плечи',
                                    'Спина',
                                    'Грудь',
                                    'Рубашка',
                                    'Гербовая накидка',
                                    'Запястья',
                                    'Кисти рук',
                                    'Пояс',
                                    'Ноги',
                                    'Ступни',
                                    'Палец',
                                    'Аксессуар',
                                    'Одноручное',
                                    'Двуручное',
                                    'Дальний бой',
                                    'Правая рука',
                                    'Левая рука');
DROP TABLE IF EXISTS wow_db.loot CASCADE;
CREATE TABLE wow_db.loot(
    id SERIAL PRIMARY KEY,
    boss_id INTEGER REFERENCES wow_db.bosses(id) NOT NULL,
    name VARCHAR(100) NOT NULL,
    item_level SMALLINT NOT NULL CHECK(item_level > 0),
    type VARCHAR(50) NOT NULL,
    slot equipment_slots,
    armor SMALLINT NOT NULL CHECK(armor >= 0),
    damage_per_second NUMERIC(9, 2) NOT NULL CHECK(damage_per_second >= 0),
    attack_speed NUMERIC(3, 2) NOT NULL CHECK(attack_speed >= 0),
    strength SMALLINT NOT NULL CHECK(strength >= 0),
    agility SMALLINT NOT NULL CHECK(agility >= 0),
    intellect SMALLINT NOT NULL CHECK(intellect >= 0),
    stamina SMALLINT NOT NULL CHECK(stamina >= 0),
    critical_strike SMALLINT NOT NULL CHECK(critical_strike >= 0),
    haste SMALLINT NOT NULL CHECK(haste >= 0),
    mastery SMALLINT NOT NULL CHECK(mastery >= 0),
    versatility SMALLINT NOT NULL CHECK(versatility >= 0),
    drop_rate NUMERIC(4, 1) CHECK(drop_rate BETWEEN 0.0 AND 100.0)
    CONSTRAINT valid_name CHECK(name SIMILAR TO '[а-яА-Я0-9]+((-[а-яА-Я0-9]+)?(''[а-яА-Я0-9]+)?((, [а-яА-Я0-9]+)|( [а-яА-Я0-9]+)|()))*'),
    CONSTRAINT valid_type CHECK(type SIMILAR TO '[а-яА-Я]+( [а-яА-Я]+)*')
);

DROP TABLE IF EXISTS wow_db.guilds CASCADE;
CREATE TABLE wow_db.guilds(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    server VARCHAR(50) NOT NULL,
    fraction VARCHAR(6) NOT NULL CHECK(fraction IN ('Альянс', 'Орда')),
    CONSTRAINT valid_name CHECK(name SIMILAR TO '[а-яА-Яa-zA-Z]+( [а-яА-Яa-zA-Z]+)*'),
    CONSTRAINT valid_server CHECK(server SIMILAR TO '[а-яА-Яa-zA-Z0-9]+((-[а-яА-Яa-zA-Z0-9]+)?(''[а-яА-Яa-zA-Z0-9]+)?((, [а-яА-Яa-zA-Z0-9]+)|( [а-яА-Яa-zA-Z0-9]+)|()))*')
);

DROP TABLE IF EXISTS wow_db.raids_x_guilds CASCADE;
CREATE TABLE wow_db.raids_x_guilds(
    raid_id INTEGER REFERENCES wow_db.raids(id),
    guild_id INTEGER REFERENCES wow_db.guilds(id),
    race_order SMALLINT NOT NULL CHECK(race_order > 0),
    date DATE NOT NULL CHECK(date > '2004-11-23'),
    PRIMARY KEY(raid_id, guild_id)
);

DROP TABLE IF EXISTS wow_db.abilities CASCADE;
CREATE TABLE wow_db.abilities(
    id SERIAL PRIMARY KEY,
    creature_id INTEGER REFERENCES wow_db.creatures(id) NOT NULL,
    name VARCHAR(50) NOT NULL,
    range SMALLINT NOT NULL CHECK(range >= 0),
    radius NUMERIC(4, 1) NOT NULL CHECK(radius >= 0),
    damage_at_once INTEGER NOT NULL CHECK(damage_at_once >= 0),
    duration SMALLINT NOT NULL CHECK(duration >= 0),
    period NUMERIC(3, 1) NOT NULL CHECK(period >= 0),
    cast_time NUMERIC(3, 1) NOT NULL CHECK(cast_time >= 0),
    school VARCHAR(30) NOT NULL,
    CONSTRAINT valid_name CHECK(name SIMILAR TO '[а-яА-Я]+( [а-яА-Я]+)*'),
    CONSTRAINT valid_school CHECK(school SIMILAR TO '[а-яА-Я]+( [а-яА-Я]+)*')
);

DROP TABLE IF EXISTS wow_db.abilities_SCD4_history CASCADE;
CREATE TABLE wow_db.abilities_SCD4_history(
    id INTEGER REFERENCES wow_db.abilities(id) NOT NULL,
    creature_id INTEGER NOT NULL CHECK(creature_id > 0),
    name VARCHAR(50) NOT NULL,
    range SMALLINT NOT NULL CHECK(range >= 0),
    radius NUMERIC(4, 1) NOT NULL CHECK(radius >= 0),
    damage_at_once INTEGER NOT NULL CHECK(damage_at_once >= 0),
    duration SMALLINT NOT NULL CHECK(duration >= 0),
    period NUMERIC(3, 1) NOT NULL CHECK(period >= 0),
    cast_time NUMERIC(3, 1) NOT NULL CHECK(cast_time >= 0),
    school VARCHAR(30) NOT NULL,
    valid_from DATE NOT NULL DEFAULT CURRENT_DATE
    CONSTRAINT valid_name CHECK(name SIMILAR TO '[а-яА-Я]+( [а-яА-Я]+)*'),
    CONSTRAINT valid_school CHECK(school SIMILAR TO '[а-яА-Я]+( [а-яА-Я]+)*')
);