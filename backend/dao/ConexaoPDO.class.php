<?php

	/**
	* Classe Conexão usando PDO
	*/
	class ConexaoPDO extends \PDO
	{

		private static $instance = null;
		private $db_host = "";
		private $db_port = "3306";
		private $db_user = "";
		private $db_password = "";
		private $db = "links";

		public function __construct(){
			try{
						$servidor = $this->conexaoServidor($_SERVER['HTTP_HOST']);
	        	$this->db_host = $servidor[0];
						$this->db_user = $servidor[1];
						$this->db_password = $servidor[2];
						if(self::$instance === null){
								self::$instance = parent::__construct("mysql:dbname=$this->db_base;host=$this->db_host;port=$this->db_port","$this->db_user","$this->db_password");
						}else{
							  die("Ocorreu um erro durante a conexão");
								exit();
						}
			}catch(Exception $e){
				die("Erro de conexão com o Banco de Dados:".$ex->getMessage());
			}
		}

		public static function getInstance()
		{
			if(!isset(self::$instance)){
						try{
							self::$instance = new ConexaoPDO();
							#Garante que o PDo lance exceções durante error_get_last
							self::$instance->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
							self::$instance->setAttribute(PDO::ATTR_ORACLE_NULLS, PDO::NULL_EMPTY_STRING);
							#Garante que os dados sejam armazenados com codificação utf8_decode
							self::$instance->exec('SET NAMES UTF8');
						}catch(Exception $ex){
							die("Erro de Conexão com Banco de Dados:".$ex->getMessage());
							exit();
						}
					}
					#Retorna a conexão
					return self::$instance;
		}

		/**
	     * Retornar um array([0]=>servidor, [1]=>usuario, [2]=>senha) com a configuração de uma conexão
	     *
	     * @param $host: $_SERVER('HTTP_HOST')
	     * @return array
	     */
	    private function conexaoServidor($host)
	    {
				$conexoes = array('localhost:8080' => array('localhost','root',''),
													'localhost' => array('10.200.2.134','homolog','homolog'),
													'10.200.2.134' => array('10.200.2.134','homolog','homolog'),
													'intranet.faetec.rj.gov.br' => array('localhost','faetecinclui','faetecinclui')
												 );

	        if (array_key_exists($host,$conexoes)){
						  return $conexoes[$host];
	        } else{
	            return false;
	        }
	    }

			# executa o script sql
			public static function queryData($query){
				$consulta = ConexaoPDO::getInstance()->query($query);
				if($consulta){
					$dados = $consulta->fetchAll(PDO::FETCH_CLASS);
					return $dados;
				} else {
					throw new \PDOException("Ocorreu um erro durante a operação");
				}
			}

			public function desconectarDB(){
				$this->instance = null;
			}

	}
