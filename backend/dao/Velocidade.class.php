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

		public function setIdVelocidade($id){
			$this->id = $id;
		}

		public function getIdVelocidade(){
			return $this->id;
		}

		public function setVelocidade($velocidade){
			$this->velocidade = $velocidade;
		}

		public function getVelocidade(){
			return $this->velocidade;
		}

		public function setStatus($status){
			$this->status = $status;
		}

		public function getStatus(){
			return $this->status;
		}

	}

?>
