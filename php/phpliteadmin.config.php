<?php 
//
// This is sample configuration file
//
// You can configure phpliteadmin in one of 2 ways:
// 1. Rename phpliteadmin.config.sample.php to phpliteadmin.config.php and change parameters in there.
//    You can set only your custom settings in phpliteadmin.config.php. All other settings will be set to defaults.
// 2. Change parameters directly in main phpliteadmin.php file
//
// Please see https://bitbucket.org/phpliteadmin/public/wiki/Configuration for more details

//password to gain access
$password = $_ENV["PASSWORD"];

//directory relative to this file to search for databases (if false, manually list databases in the $databases variable)
$directory = '/db';

//whether or not to scan the subdirectories of the above directory infinitely deep
$subdirectories = false;

/* ---- Interface settings ---- */

// Theme! If you want to change theme, save the CSS file in same folder of phpliteadmin or in folder "themes"
$theme = 'phpliteadmin.css';

// the default language! If you want to change it, save the language file in same folder of phpliteadmin or in folder "languages"
// More about localizations (downloads, how to translate etc.): https://bitbucket.org/phpliteadmin/public/wiki/Localization
$language = 'en';

// set default number of rows. You need to relog after changing the number
$rowsNum = 30;

// reduce string characters by a number bigger than 10
$charsNum = 300;

// maximum number of SQL queries to save in the history
$maxSavedQueries = 10;

/* ---- Advanced options ---- */

//changing the following variable allows multiple phpLiteAdmin installs to work under the same domain.
$cookie_name = 'pla3412';

//whether or not to put the app in debug mode where errors are outputted
$debug = false;

// the user is allowed to create databases with only these extensions
$allowed_extensions = array('db','db3','sqlite','sqlite3');

