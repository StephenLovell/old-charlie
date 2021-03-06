<?php

/**
  * INI
  *
  * Processes an INI config file and outputs an Object of associated data.
  */

class Ini { 

/////////////////////////////////////
//  PROPERTIES
/////////////////////////////////////

    private static $instance; 
    private $settings; 
    
/////////////////////////////////////
//  METHODS	
/////////////////////////////////////
    
    private function __construct($ini_file) { 
        $this->settings = parse_ini_file($ini_file, true); 
    } 
    
    public static function getInstance($ini_file) { 
        if(! isset(self::$instance)) { 
            self::$instance = new Ini($ini_file);            
        } 
        return self::$instance; 
    } 
    
    public function __get($setting) { 
        if(array_key_exists($setting, $this->settings)) { 
            return $this->settings[$setting]; 
        } else { 
            foreach($this->settings as $section) { 
                if(array_key_exists($setting, $section)) { 
                    return $section[$setting]; 
                } 
            } 
        } 
    }     
} 
