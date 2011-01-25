/* Required for Expiration Date */

ALTER TABLE  `category` ADD  `date_expiration` DATETIME NOT NULL AFTER  `date_modified`;