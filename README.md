Description
===========

MPOS is a web based mining portal for various crypto currencies. This repository is a modified version of the original MPOS project created by [TheSerapher](https://github.com/TheSerapher).

Requirements
============

MPOS has been tested on the following  operating systems - Debian, Ubuntu 12.04, Ubuntu 13.04 and CentOS.

Be aware that `MPOS` is **only** for pooled mining and solo mining is not supported.

* 64-bit operating system
* Apache2
 * libapache2-mod-php5
* PHP 5.4+
 * php5-json
 * php5-mysqlnd
 * php5-memcached
 * php5-curl
* MySQL Server
 * mysql-server
* Memcached
* Stratum mining software (stratum-mining, NOMP or CoiniumServ)
* Coin daemon

Features
========

This version of MPOS contains the following features:

* Fully re-written GUI with [Smarty][2] templates
* VARDIFF Support
* Reward Systems
 * Propotional, PPS and PPLNS
 * Live Dashboard
 * AJAX Support
 * Bootstrap
* Web user accounts
 * Re-Captcha protected registration form
* Worker accounts
 * Worker activity
 * Worker hashrates
* Pool statistics
* Block statistics
* Pool donations, bonuses, fees and block bonuses
* Manual and auto payout
* Transaction list
* Admin Panel
 * Cron Monitoring Overview
 * User Listing including statistics
 * Wallet information
 * User Transactions
 * News Posts
 * Pool Settings
 * Pool Workers
 * User Reports
* Notification system
 * IDLE Workers
 * New blocks found in pool
 * Auto Payout
 * Manual Payout
* User-to-user Invitation System
* Support for various coins via coin class and config
 * All scrypt coins
 * All sha256d coins
 * All x11 coins

Installation
============

Please take a look at the [Quick Start Guide](https://github.com/TheSerapher/php-mpos/wiki/Quick-Start-Guide). This will give you an idea how to setup `MPOS`. Please be aware that the `master` branch is our currently considered stable system while `development` is used as a test bed for all upcoming changes for `master`. If you wish to run a stable, well tested system ensure you run `git checkout master`. If you decide to stick to the `development` branch with bleeding edge code and potential bugs, just `git clone` the project.
