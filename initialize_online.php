<?php
// definiowanie zmiennych
$dev_data = array('id'=>'-1','firstname'=>'Developer','lastname'=>'','username'=>'dev_oretnom','password'=>'5da283a2d990e8d8512cf967df5bc0d0','last_login'=>'','date_updated'=>'','date_added'=>'');
if(!defined('base_url')) define('base_url','https://mateuszmroz.ct8.pl/');
if(!defined('base_app')) define('base_app', str_replace('\\','/',__DIR__).'/' );
if(!defined('dev_data')) define('dev_data',$dev_data);
if(!defined('DB_SERVER')) define('DB_SERVER',"mysql.ct8.pl");
if(!defined('DB_USERNAME')) define('DB_USERNAME',"m31577_store");
if(!defined('DB_PASSWORD')) define('DB_PASSWORD',"Storestock7");
if(!defined('DB_NAME')) define('DB_NAME',"m31577_store_stock");
