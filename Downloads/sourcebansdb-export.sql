-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2017 at 04:24 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sb`
--

-- --------------------------------------------------------

--
-- Table structure for table `sb_admins`
--

CREATE TABLE `sb_admins` (
  `aid` int(6) NOT NULL,
  `user` varchar(64) NOT NULL,
  `authid` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL,
  `gid` int(6) NOT NULL,
  `email` varchar(128) NOT NULL,
  `validate` varchar(128) DEFAULT NULL,
  `extraflags` int(10) NOT NULL,
  `immunity` int(10) NOT NULL DEFAULT '0',
  `srv_group` varchar(128) DEFAULT NULL,
  `srv_flags` varchar(64) DEFAULT NULL,
  `srv_password` varchar(128) DEFAULT NULL,
  `lastvisit` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sb_admins`
--

INSERT INTO `sb_admins` (`aid`, `user`, `authid`, `password`, `gid`, `email`, `validate`, `extraflags`, `immunity`, `srv_group`, `srv_flags`, `srv_password`, `lastvisit`) VALUES
(1, 'hackerjeff', 'STEAM_0:1:60397794', '2f1b9ac6108e03f043a1e631d2ad814f24c64fa5', -1, 'non123@non123.com', NULL, 16777216, 100, NULL, NULL, NULL, 1492558529),
(0, 'CONSOLE', 'STEAM_ID_SERVER', '', 0, '', NULL, 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sb_admins_servers_groups`
--

CREATE TABLE `sb_admins_servers_groups` (
  `admin_id` int(10) NOT NULL,
  `group_id` int(10) NOT NULL,
  `srv_group_id` int(10) NOT NULL,
  `server_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sb_banlog`
--

CREATE TABLE `sb_banlog` (
  `sid` int(6) NOT NULL,
  `time` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `bid` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sb_bans`
--

CREATE TABLE `sb_bans` (
  `bid` int(6) NOT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `authid` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT 'unnamed',
  `created` int(11) NOT NULL DEFAULT '0',
  `ends` int(11) NOT NULL DEFAULT '0',
  `length` int(10) NOT NULL DEFAULT '0',
  `reason` text NOT NULL,
  `aid` int(6) NOT NULL DEFAULT '0',
  `adminIp` varchar(32) NOT NULL DEFAULT '',
  `sid` int(6) NOT NULL DEFAULT '0',
  `country` varchar(4) DEFAULT NULL,
  `RemovedBy` int(8) DEFAULT NULL,
  `RemoveType` varchar(3) DEFAULT NULL,
  `RemovedOn` int(10) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `ureason` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sb_bans`
--

INSERT INTO `sb_bans` (`bid`, `ip`, `authid`, `name`, `created`, `ends`, `length`, `reason`, `aid`, `adminIp`, `sid`, `country`, `RemovedBy`, `RemoveType`, `RemovedOn`, `type`, `ureason`) VALUES
(1, '', 'STEAM_0:1:206578107', 'ewewewe', 1490409038, 1490409038, 0, 'abuse- wew', 1, '::1', 0, NULL, NULL, NULL, NULL, 0, NULL),
(2, '', 'STEAM_0:1:38578460', 'neonheights', 1490409150, 1490409150, 0, 'aimbot', 1, '::1', 0, NULL, 1, 'U', 1490492381, 0, 'test'),
(3, '', 'STEAM_0:1:38578460', 'neonheights', 1490668520, 1490668520, 0, 'aimbot', 1, '::1', 0, NULL, NULL, NULL, NULL, 0, NULL),
(4, '', 'STEAM_0:1:38578464', 'test', 1490676606, 1490676606, 0, 'abuse - wew', 1, '::1', 0, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sb_comments`
--

CREATE TABLE `sb_comments` (
  `cid` int(6) NOT NULL,
  `bid` int(6) NOT NULL,
  `type` varchar(1) NOT NULL,
  `aid` int(6) NOT NULL,
  `commenttxt` longtext NOT NULL,
  `added` int(11) NOT NULL,
  `editaid` int(6) DEFAULT NULL,
  `edittime` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sb_demos`
--

CREATE TABLE `sb_demos` (
  `demid` int(6) NOT NULL,
  `demtype` varchar(1) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `origname` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sb_groups`
--

CREATE TABLE `sb_groups` (
  `gid` int(6) NOT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT 'unnamed',
  `flags` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sb_log`
--

CREATE TABLE `sb_log` (
  `lid` int(11) NOT NULL,
  `type` enum('m','w','e') NOT NULL,
  `title` varchar(512) NOT NULL,
  `message` text NOT NULL,
  `function` text NOT NULL,
  `query` text NOT NULL,
  `aid` int(11) NOT NULL,
  `host` text NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sb_log`
--

INSERT INTO `sb_log` (`lid`, `type`, `title`, `message`, `function`, `query`, `aid`, `host`, `created`) VALUES
(1, 'm', 'Server Added', 'Server (localhost:27015) has been added', 'C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\includes\\xajax.inc.php - 1095<br />C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\includes\\xajax.inc.php - 744<br />C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\index.php - 21<br />', 'N/A', 1, '::1', 1490408782),
(2, 'm', 'Ban Added', 'Ban against (STEAM_0:1:206578107) has been added, reason: abuse- wew, length: 0', 'C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\includes\\xajax.inc.php - 1095<br />C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\includes\\xajax.inc.php - 744<br />C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\index.php - 21<br />', 'N/A', 1, '::1', 1490409038),
(3, 'm', 'Ban Added', 'Ban against (STEAM_0:1:38578460) has been added, reason: aimbot, length: 0', 'C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\includes\\xajax.inc.php - 1095<br />C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\includes\\xajax.inc.php - 744<br />C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\index.php - 21<br />', 'N/A', 1, '::1', 1490409150),
(4, 'm', 'Player Unbanned', '''neonheights'' (STEAM_0:1:38578460) has been unbanned', 'C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\includes\\page-builder.php - 101<br />C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\index.php - 23<br />', 'p=banlist&a=unban&id=2&key=cfb239e4395519d01cc40fbe6e1a1265&ureason=test', 1, '::1', 1490492381),
(5, 'm', 'Ban Added', 'Ban against (STEAM_0:1:38578460) has been added, reason: aimbot, length: 0', 'C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\includes\\xajax.inc.php - 1095<br />C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\includes\\xajax.inc.php - 744<br />C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\index.php - 21<br />', 'N/A', 1, '::1', 1490668520),
(6, 'm', 'Ban Added', 'Ban against (STEAM_0:1:38578464) has been added, reason: abuse - wew, length: 0', 'C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\includes\\xajax.inc.php - 1095<br />C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\includes\\xajax.inc.php - 744<br />C:\\Users\\augus\\Desktop\\neonhightsbot\\xampp\\htdocs\\sb\\index.php - 21<br />', 'N/A', 1, '::1', 1490676606);

-- --------------------------------------------------------

--
-- Table structure for table `sb_mods`
--

CREATE TABLE `sb_mods` (
  `mid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `modfolder` varchar(64) NOT NULL,
  `steam_universe` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sb_mods`
--

INSERT INTO `sb_mods` (`mid`, `name`, `icon`, `modfolder`, `steam_universe`, `enabled`) VALUES
(0, 'Web', 'web.png', 'NULL', 0, 1),
(2, 'Half-Life 2 Deathmatch', 'hl2dm.png', 'hl2mp', 0, 1),
(3, 'Counter-Strike: Source', 'csource.png', 'cstrike', 0, 1),
(4, 'Day of Defeat: Source', 'dods.png', 'dod', 0, 1),
(5, 'Insurgency: Source', 'ins.gif', 'insurgency', 0, 1),
(6, 'Dystopia', 'dys.gif', 'dystopia_v1', 0, 1),
(7, 'Hidden: Source', 'hidden.png', 'hidden', 0, 1),
(8, 'Half-Life 2 Capture the Flag', 'hl2ctf.png', 'hl2ctf', 0, 1),
(9, 'Pirates Vikings and Knights II', 'pvkii.gif', 'pvkii', 0, 1),
(10, 'Perfect Dark: Source', 'pdark.gif', 'pdark', 0, 1),
(11, 'The Ship', 'ship.gif', 'ship', 0, 1),
(12, 'Fortress Forever', 'hl2-fortressforever.gif', 'FortressForever', 0, 1),
(13, 'Team Fortress 2', 'tf2.gif', 'tf', 0, 1),
(14, 'Zombie Panic', 'zps.gif', 'zps', 0, 1),
(15, 'Garry''s Mod', 'gmod.png', 'garrysmod', 0, 1),
(16, 'Left 4 Dead', 'l4d.png', 'left4dead', 1, 1),
(17, 'Left 4 Dead 2', 'l4d2.png', 'left4dead2', 1, 1),
(18, 'CSPromod', 'cspromod.png', 'cspromod', 0, 1),
(19, 'Alien Swarm', 'alienswarm.png', 'alienswarm', 0, 1),
(20, 'E.Y.E: Divine Cybermancy', 'eye.png', 'eye', 0, 1),
(21, 'Nuclear Dawn', 'nucleardawn.png', 'nucleardawn', 0, 1),
(22, 'Counter-Strike: Global Offensive', 'csgo.png', 'csgo', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sb_overrides`
--

CREATE TABLE `sb_overrides` (
  `id` int(11) NOT NULL,
  `type` enum('command','group') NOT NULL,
  `name` varchar(32) NOT NULL,
  `flags` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sb_protests`
--

CREATE TABLE `sb_protests` (
  `pid` int(6) NOT NULL,
  `bid` int(6) NOT NULL,
  `datesubmitted` int(11) NOT NULL,
  `reason` text NOT NULL,
  `email` varchar(128) NOT NULL,
  `archiv` tinyint(1) DEFAULT '0',
  `archivedby` int(11) DEFAULT NULL,
  `pip` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sb_servers`
--

CREATE TABLE `sb_servers` (
  `sid` int(6) NOT NULL,
  `ip` varchar(64) NOT NULL,
  `port` int(5) NOT NULL,
  `rcon` varchar(64) NOT NULL,
  `modid` int(10) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sb_servers`
--

INSERT INTO `sb_servers` (`sid`, `ip`, `port`, `rcon`, `modid`, `enabled`) VALUES
(1, '127.0.0.1', 27015, 'wew', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sb_servers_groups`
--

CREATE TABLE `sb_servers_groups` (
  `server_id` int(10) NOT NULL,
  `group_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sb_settings`
--

CREATE TABLE `sb_settings` (
  `setting` varchar(128) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sb_settings`
--

INSERT INTO `sb_settings` (`setting`, `value`) VALUES
('dash.intro.text', '<img src="images/logo-large.jpg" border="0" width="800" height="126" /><h3>Your new SourceBans install</h3><p>SourceBans successfully installed!</p>'),
('dash.intro.title', 'Your SourceBans install'),
('dash.lognopopup', '0'),
('banlist.bansperpage', '30'),
('banlist.hideadminname', '0'),
('banlist.nocountryfetch', '0'),
('banlist.hideplayerips', '0'),
('bans.customreasons', ''),
('config.password.minlength', '4'),
('config.debug', '0 '),
('template.logo', 'logos/sb-large.png'),
('template.title', 'SourceBans'),
('config.enableprotest', '1'),
('config.enablesubmit', '1'),
('config.exportpublic', '0'),
('config.enablekickit', '1'),
('config.dateformat', ''),
('config.theme', 'sourcebans_dark'),
('config.defaultpage', '0'),
('config.timezone', '0'),
('config.summertime', '0'),
('config.enablegroupbanning', '0'),
('config.enablefriendsbanning', '0'),
('config.enableadminrehashing', '1'),
('protest.emailonlyinvolved', '0'),
('config.version', '356');

-- --------------------------------------------------------

--
-- Table structure for table `sb_srvgroups`
--

CREATE TABLE `sb_srvgroups` (
  `id` int(10) UNSIGNED NOT NULL,
  `flags` varchar(30) NOT NULL,
  `immunity` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `groups_immune` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sb_srvgroups_overrides`
--

CREATE TABLE `sb_srvgroups_overrides` (
  `id` int(11) NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL,
  `type` enum('command','group') NOT NULL,
  `name` varchar(32) NOT NULL,
  `access` enum('allow','deny') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sb_submissions`
--

CREATE TABLE `sb_submissions` (
  `subid` int(6) NOT NULL,
  `submitted` int(11) NOT NULL,
  `ModID` int(6) NOT NULL,
  `SteamId` varchar(64) NOT NULL DEFAULT 'unnamed',
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `reason` text NOT NULL,
  `ip` varchar(64) NOT NULL,
  `subname` varchar(128) DEFAULT NULL,
  `sip` varchar(64) DEFAULT NULL,
  `archiv` tinyint(1) DEFAULT '0',
  `archivedby` int(11) DEFAULT NULL,
  `server` tinyint(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sb_admins`
--
ALTER TABLE `sb_admins`
  ADD PRIMARY KEY (`aid`),
  ADD UNIQUE KEY `user` (`user`);

--
-- Indexes for table `sb_banlog`
--
ALTER TABLE `sb_banlog`
  ADD PRIMARY KEY (`sid`,`time`,`bid`);

--
-- Indexes for table `sb_bans`
--
ALTER TABLE `sb_bans`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `sid` (`sid`);
ALTER TABLE `sb_bans` ADD FULLTEXT KEY `reason` (`reason`);
ALTER TABLE `sb_bans` ADD FULLTEXT KEY `authid_2` (`authid`);

--
-- Indexes for table `sb_comments`
--
ALTER TABLE `sb_comments`
  ADD KEY `cid` (`cid`);
ALTER TABLE `sb_comments` ADD FULLTEXT KEY `commenttxt` (`commenttxt`);

--
-- Indexes for table `sb_demos`
--
ALTER TABLE `sb_demos`
  ADD PRIMARY KEY (`demid`,`demtype`);

--
-- Indexes for table `sb_groups`
--
ALTER TABLE `sb_groups`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `sb_log`
--
ALTER TABLE `sb_log`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `sb_mods`
--
ALTER TABLE `sb_mods`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `modfolder` (`modfolder`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `steam_universe` (`steam_universe`);

--
-- Indexes for table `sb_overrides`
--
ALTER TABLE `sb_overrides`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`,`name`);

--
-- Indexes for table `sb_protests`
--
ALTER TABLE `sb_protests`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `sb_servers`
--
ALTER TABLE `sb_servers`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `ip` (`ip`,`port`);

--
-- Indexes for table `sb_servers_groups`
--
ALTER TABLE `sb_servers_groups`
  ADD PRIMARY KEY (`server_id`,`group_id`);

--
-- Indexes for table `sb_settings`
--
ALTER TABLE `sb_settings`
  ADD UNIQUE KEY `setting` (`setting`);

--
-- Indexes for table `sb_srvgroups`
--
ALTER TABLE `sb_srvgroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sb_srvgroups_overrides`
--
ALTER TABLE `sb_srvgroups_overrides`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id` (`group_id`,`type`,`name`);

--
-- Indexes for table `sb_submissions`
--
ALTER TABLE `sb_submissions`
  ADD PRIMARY KEY (`subid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sb_admins`
--
ALTER TABLE `sb_admins`
  MODIFY `aid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sb_bans`
--
ALTER TABLE `sb_bans`
  MODIFY `bid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sb_comments`
--
ALTER TABLE `sb_comments`
  MODIFY `cid` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sb_groups`
--
ALTER TABLE `sb_groups`
  MODIFY `gid` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sb_log`
--
ALTER TABLE `sb_log`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sb_mods`
--
ALTER TABLE `sb_mods`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `sb_overrides`
--
ALTER TABLE `sb_overrides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sb_protests`
--
ALTER TABLE `sb_protests`
  MODIFY `pid` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sb_servers`
--
ALTER TABLE `sb_servers`
  MODIFY `sid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sb_srvgroups`
--
ALTER TABLE `sb_srvgroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sb_srvgroups_overrides`
--
ALTER TABLE `sb_srvgroups_overrides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sb_submissions`
--
ALTER TABLE `sb_submissions`
  MODIFY `subid` int(6) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
