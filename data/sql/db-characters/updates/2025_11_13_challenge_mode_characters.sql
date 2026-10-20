
CREATE TABLE IF NOT EXISTS `challenge_mode_characters` (
    `guid` INT UNSIGNED NOT NULL,
    `name` VARCHAR(12) NOT NULL DEFAULT '',
    `challenge_mask` INT UNSIGNED NOT NULL DEFAULT 0,
    `result` TINYINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '0=进行中,1=成功,2=失败',
    `start_time` TIMESTAMP NULL DEFAULT NULL,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`guid`),
    CONSTRAINT `fk_challenge_mode_characters_guid` FOREIGN KEY (`guid`) REFERENCES `characters` (`guid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
