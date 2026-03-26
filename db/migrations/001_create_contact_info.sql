-- Migration: Create Contact_info table
-- Created: 2026-03-26

CREATE TABLE IF NOT EXISTS `Contact_info` (
  `id`          INT          NOT NULL AUTO_INCREMENT,
  `first_name`  VARCHAR(100) NOT NULL,
  `last_name`   VARCHAR(100) NOT NULL,
  `address`     VARCHAR(255) NOT NULL,
  `created_at`  DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by`  VARCHAR(100) NOT NULL,
  `updated_at`  DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by`  VARCHAR(100) NOT NULL,
  `is_deleted`  TINYINT(1)   NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
