<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Front extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->load->database();
		$this->load->helper('url');
		
		$this->load->library('grocery_CRUD');	
	}
	
	function _view_output($output = null)
	{
		$this->load->view('homeView.html',$output);	
	}
	
	function index()
	{
		$this->load->view('homeView.html');
	}
	
/*	function index()
	{
		$this->_view_output((object)array('output' => '' , 'js_files' => array() , 'css_files' => array()));
	}	
*/			
	function crearTorneo(){
			
			$this->load->view('crearTorneo.html');	
	}
	
	function relacionarEquipos()
	{
		$this->load->view('relacionarEquipos.html');	
	}
	
}