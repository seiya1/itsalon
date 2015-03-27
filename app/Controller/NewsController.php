<?php

class NewsController extends AppController {

    public $helpers = array('Html', 'Form');

    public function view($id = null) {
        $this->News->id = $id;
        if (!$this->News->exists()) {
            throw new NotFoundException(__('Invalid news'));
        }
        $this->set('news', $this->News->read(null, $id));
    }

    public function add() {

    }

    public function edit($id = null) {

    }

    public function delete($id = null) {

    }

}
