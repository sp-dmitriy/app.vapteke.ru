<?php
//INSTALL FLYWEB
class DatabaseSettings
{
	var $settings;
	function getSettings()
	{
		$settings['dbhost'] = getenv('DB_SERVER');
		$settings['dbname'] = getenv('DB_NAME_ADMIN_PANEL');
		$settings['dbusername'] = getenv('DB_USERNAME');
		$settings['dbpassword'] = getenv('DB_PASSWORD');
	}
} 

