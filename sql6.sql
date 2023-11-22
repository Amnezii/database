SELECT cities.name, regions.name
FROM cities, regions
WHERE cities.region = regions.uuid AND cities.population > 350000;

SELECT cities.name
FROM cities
INNER JOIN regions ON cities.region = regions.uuid
WHERE regions.name = 'Nord';


CREATE TABLE `lines` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` VARCHAR(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stations` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
  `line_id` INT(10) UNSIGNED NOT NULL,
  `previous_station` INT(10) COLLATE utf8_unicode_ci,
  `next_station` INT(10) COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `connections` (
  `station_id_1` INT(10) UNSIGNED NOT NULL,
  `station_id_2` INT(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
