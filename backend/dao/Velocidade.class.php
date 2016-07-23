<?php 

	/**
	* 
	*/
	class Velocidade
	{
		private $id;
		private $velocidade;
		private $status;

		function __construct($p = null)
		{
			$this->velocidade 	= $p['velocidade'];
			$this->status 		= $p['status'];
		}


		public function NewVelocidade(Velocidade $v){
			try{

				$query = "INSERT INTO VElocidade"

			}catch(Exception $e){
				echo "Mensagem: ".$e->getMessage();
			}
		}


		public function GetAllListVelocidade(){
			try{
				$query = "SELECT * FROM velocidade ORDER by velocidade ASC";

			}catch(Exception $e){
				echo "Mensagem: ".$e->getMessage();
			}
		}

		public function UpdateVelocidade(){
			try{
				$query = "";
			}catch(Exception $e){
				echo "Mensagem: ".$e->getMessage();
			}
		}

	}

?>