CREATE TABLE IF NOT EXISTS `opod_stash` (
  `owner` varchar(70) NOT NULL,
  `placeId` int(4) NOT NULL DEFAULT 0,
  `data` longtext DEFAULT NULL,
  `code` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;