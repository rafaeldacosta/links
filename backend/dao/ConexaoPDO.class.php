<?php

	/**
	* Classe Conexão usando PDO
	*/
	class ConexaoPDO 
	{
		
		private static $instance = null;

		function __construct(){}

		public static function getConnection()
		{
			if ( !self::$instance )
			{
				self::openConnection();
			}
			return self::$instance;
		}


		public static function openConnection()
		{
			$servidor = $this->conexaoServidor($_SERVER['HTTP_HOST']);
			self::$instance = new PDO($servidor[0],$servidor[1],$servidor[2]);
		}	


		/**
	     * Retornar um array([0]=>servidor, [1]=>usuario, [2]=>senha) com a configuração de uma conexão
	     * 
	     * @param $host: $_SERVER('HTTP_HOST')
	     * @return array
	     */ 
	    private function conexaoServidor($host)
	    {
	        $conexoes = array('localhost' => array('mysql:host=localhost; port=3306; dbname=test;','root',''),
	                        '127.0.0.1'	=> array('mysql:host=127.0.0.1; port=3306; dbname=test;','root',''),
	                        'localhost:8080' => array('mysql:host=localhost; port=3306; dbname=test;','root',''), 
	                        '10.200.2.134' => array('mysql:host=127.0.0.1; port=3306; dbname=test;','homolog','homolog'),
	                        '10.200.2.66' => array('mysql:host=localhost; port=3306; dbname=links;','links','links'),
	                        'intranet.faetec.rj.gov.br' => array('mysql:host=localhost; port=3306; dbname=links;','links','links')
	                        );
	        
	        if (array_key_exists($host,$conexoes)){
	             return $conexoes[$host];
	        } else{
	            return false;
	        }
	    }

	    echo "<pre>";
	    $s = ConexaoPDO::getConnection();
	    echo $s;
	    echo "</pre>";

	}