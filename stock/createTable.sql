DROP TABLE IF EXISTS `t_trans_history`;
CREATE TABLE `t_trans_history` (
  `Fid` int(10) unsigned NOT NULL auto_increment,
  `StockName` char(16) NOT NULL default '',
  `Date` int(10) unsigned NOT NULL default '0',
  `Time` time NOT NULL default '00:00:00',
  `Type` tinyint(3) unsigned NOT NULL default '0',
  `Des` char(16) NOT NULL default '',
  `Price` float NOT NULL default '0',
  `Num` int(11) NOT NULL default '0',
  `Amount` float NOT NULL default '0',
  `TransID` int(10) unsigned NOT NULL default '0',
  `StockID` int(10) unsigned NOT NULL default '0',
  `CiID` int(10) unsigned NOT NULL default '0',
  `StockholderID` char(16) NOT NULL default '',
  PRIMARY KEY  (`Fid`),
  UNIQUE KEY `unikey` (`StockID`,`Date`,`Time`,`Type`,`Num`,`Price`,`CiID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
