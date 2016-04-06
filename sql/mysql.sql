##########################################################################
## Donations - Paypal financial management module for Xoops 2           ##
## Copyright (c) 2004 by Xoops2 Donations Module Dev Team		##
## http://dev.xoops.org/modules/xfmod/project/?group_id=1060		##
## 
##########################################################################
##                                                                      ##
## Based on NukeTreasury for PHP-Nuke - by Dave Lawrence AKA Thrash     ##
## NukeTreasury - Financial management for PHP-Nuke                     ##
## Copyright (c) 2004 by Dave Lawrence AKA Thrash                       ##
##                       thrash@fragnastika.com                         ##
##                       thrashn8r@hotmail.com                          ##
##                                                                      ##
##########################################################################
##                                                                      ##
## This program is free software; you can redistribute it and/or modify ##
## it under the terms of the GNU General Public License as published by ##
## the Free Software Foundation; either version 2 of the License.       ##
##                                                                      ##
## This program is distributed in the hope that it will be useful, but  ##
## WITHOUT ANY WARRANTY; without even the implied warranty of           ##
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU     ##
## General Public License for more details.                             ##
##                                                                      ##
## You should have received a copy of the GNU General Public License    ##
## along with this program; if not, write to the Free Software          ##
## Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307  ##
## USA                                                                  ##
##########################################################################

#
# Table structure for table `donations_config`
#
# Creation: Sep 30, 2004 at 09:06 PM
# Last update: Sep 30, 2004 at 10:12 PM
#

CREATE TABLE `donations_config` (
  `name`    VARCHAR(25)  NOT NULL DEFAULT '',
  `subtype` VARCHAR(20)  NOT NULL DEFAULT '',
  `value`   VARCHAR(200) NOT NULL DEFAULT '0',
  `text`    TEXT         NOT NULL,
  KEY (`name`),
  KEY (`subtype`)
)
  ENGINE = MyISAM;

# --------------------------------------------------------

#
# Table structure for table `donations_financial`
#
# Creation: Mar 31, 2004 at 12:11 AM
# Last update: Apr 22, 2004 at 09:25 PM
#

CREATE TABLE `donations_financial` (
  `id`     INT(11)      NOT NULL AUTO_INCREMENT,
  `date`   DATETIME     NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num`    VARCHAR(16)  NOT NULL DEFAULT '',
  `name`   VARCHAR(128) NOT NULL DEFAULT '',
  `descr`  VARCHAR(128) NOT NULL DEFAULT '',
  `amount` VARCHAR(10)  NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY (`name`)
)
  ENGINE = MyISAM;

#
# Dumping data for table `donations_financial`
#

# --------------------------------------------------------

############################################################
#  `receiver_id` varchar(127) NOT NULL default '', //
#  `num_cart_items` varchar(127) NOT NULL default '', //
#  `pending_reason` varchar(127) NOT NULL default '', //
#  `reason_code` varchar(127) NOT NULL default '', //
#  `payment_type` varchar(127) NOT NULL default '', //
#  `for_auction` varchar(127) NOT NULL default '', //
#  `auction_buyer_id` varchar(127) NOT NULL default '', //
#  `auction_closing_date` varchar(127) NOT NULL default '', //
#  `auction_multi_item` varchar(127) NOT NULL default '', //
#  `payer_business_name` varchar(127) NOT NULL default '', //
#  `address_name` varchar(127) NOT NULL default '', //
#  `payer_id` varchar(127) NOT NULL default '', //
#  `notify_version` varchar(127) NOT NULL default '', //
#  `verify_sign` varchar(127) NOT NULL default '', //
################################################


#
# Table structure for table `donations_transactions`
#
# Creation: Mar 31, 2004 at 12:11 AM
# Last update: Apr 23, 2004 at 10:09 PM
#

CREATE TABLE `donations_transactions` (
  `id`                   INT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `business`             VARCHAR(50)     NOT NULL DEFAULT '',
  `receiver_email`       VARCHAR(127)    NOT NULL DEFAULT '',
  `receiver_id`          VARCHAR(127)    NOT NULL DEFAULT '',
  `item_name`            VARCHAR(60)     NOT NULL DEFAULT '',
  `item_number`          VARCHAR(40)     NOT NULL DEFAULT '',
  `quantity`             VARCHAR(6)      NOT NULL DEFAULT '',
  `invoice`              VARCHAR(40)     NOT NULL DEFAULT '',
  `custom`               VARCHAR(127)    NOT NULL DEFAULT '',
  `memo`                 TEXT            NOT NULL,
  `tax`                  VARCHAR(10)     NOT NULL DEFAULT '',
  `option_name1`         VARCHAR(60)     NOT NULL DEFAULT '',
  `option_selection1`    VARCHAR(127)    NOT NULL DEFAULT '',
  `option_name2`         VARCHAR(60)     NOT NULL DEFAULT '',
  `option_selection2`    VARCHAR(127)    NOT NULL DEFAULT '',
  `num_cart_items`       VARCHAR(127)    NOT NULL DEFAULT '',
  `mc_gross`             VARCHAR(10)     NOT NULL DEFAULT '',
  `mc_fee`               VARCHAR(10)     NOT NULL DEFAULT '',
  `mc_currency`          VARCHAR(5)      NOT NULL DEFAULT '',
  `settle_amount`        VARCHAR(12)     NOT NULL DEFAULT '',
  `settle_currency`      VARCHAR(5)      NOT NULL DEFAULT '',
  `exchange_rate`        VARCHAR(10)     NOT NULL DEFAULT '',
  `payment_gross`        VARCHAR(10)     NOT NULL DEFAULT '',
  `payment_fee`          VARCHAR(10)     NOT NULL DEFAULT '',
  `payment_status`       VARCHAR(15)     NOT NULL DEFAULT '',
  `pending_reason`       VARCHAR(127)    NOT NULL DEFAULT '',
  `reason_code`          VARCHAR(127)    NOT NULL DEFAULT '',
  `payment_date`         DATETIME        NOT NULL DEFAULT '0000-00-00 00:00:00',
  `txn_id`               VARCHAR(20)     NOT NULL DEFAULT '',
  `parent_txn_id`        VARCHAR(20)     NOT NULL DEFAULT '',
  `txn_type`             VARCHAR(15)     NOT NULL DEFAULT '',
  `payment_type`         VARCHAR(127)    NOT NULL DEFAULT '',
  `for_auction`          VARCHAR(127)    NOT NULL DEFAULT '',
  `auction_buyer_id`     VARCHAR(127)    NOT NULL DEFAULT '',
  `auction_closing_date` VARCHAR(127)    NOT NULL DEFAULT '',
  `auction_multi_item`   VARCHAR(127)    NOT NULL DEFAULT '',
  `first_name`           VARCHAR(127)    NOT NULL DEFAULT '',
  `last_name`            VARCHAR(127)    NOT NULL DEFAULT '',
  `payer_business_name`  VARCHAR(127)    NOT NULL DEFAULT '',
  `address_name`         VARCHAR(127)    NOT NULL DEFAULT '',
  `address_street`       VARCHAR(127)    NOT NULL DEFAULT '',
  `address_city`         VARCHAR(127)    NOT NULL DEFAULT '',
  `address_state`        VARCHAR(127)    NOT NULL DEFAULT '',
  `address_zip`          VARCHAR(20)     NOT NULL DEFAULT '',
  `address_country`      VARCHAR(127)    NOT NULL DEFAULT '',
  `address_status`       VARCHAR(15)     NOT NULL DEFAULT '',
  `payer_email`          VARCHAR(127)    NOT NULL DEFAULT '',
  `payer_id`             VARCHAR(127)    NOT NULL DEFAULT '',
  `payer_status`         VARCHAR(15)     NOT NULL DEFAULT '',
  `notify_version`       VARCHAR(127)    NOT NULL DEFAULT '',
  `verify_sign`          VARCHAR(127)    NOT NULL DEFAULT '',
  `test_ipn`             TINYINT(1)      NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY (`txn_id`),
  KEY (`payment_date`)
)
  ENGINE = MyISAM;

#
# Dumping data for table `donations_transactions`
#

# --------------------------------------------------------

#
# Table structure for table `donations_translog`
#
# Creation: Mar 31, 2004 at 12:11 AM
# Last update: Apr 23, 2004 at 08:33 AM
#

CREATE TABLE `donations_translog` (
  `id`           INT(11)  NOT NULL AUTO_INCREMENT,
  `log_date`     DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `payment_date` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logentry`     TEXT     NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = MyISAM;

#
# Dumping data for table `donations_translog`
#
