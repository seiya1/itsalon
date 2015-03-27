<?php

class HomeController extends AppController {

    public $helpers = array('Html', 'Form');
    public $uses = array('News');

    public function index() {
        $this->set('news', $this->News->find('all'));
    }

    public function contact() {
        
    }
}
