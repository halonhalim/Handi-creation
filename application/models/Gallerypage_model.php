<?php

if (!defined('BASEPATH'))
    exit('Hacking Attempt : Get Out of the system ..!');

class Gallerypage_model extends CI_Model {

    public function index() {
        $this->db->select('*');
        $this->db->from('gallerypage');
        $this->db->order_by('id', 'ASC');
        return $this->db->get()->result();
    }

    public function get_by_id($id) {
        $query = $this->db->get_where('gallerypage', array('id' => $id));
        return $query->row();
    }

    public function save($data) {
        $this->db->insert('gallerypage', $data);

        if ($this->db->affected_rows() == 1) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    public function update($data, $id) {
        $this->db->update('gallerypage', $data, array('id' => $id));

        if ($this->db->affected_rows() == 1) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    public function delete($id) {
        $this->db->delete('gallerypage', array('id' => $id));

        if ($this->db->affected_rows() == 1)
            return TRUE;
        else
            return FALSE;
    }

    function gallery($start = NULL, $per_page = NULL) {
        $this->db->select('*');
        $this->db->from('gallerypage');
        $this->db->order_by('id', 'DESC');
        if ($start == NULL && $per_page == NULL) {
            return $this->db->get()->num_rows();
        } else {
            $this->db->limit($per_page, $start);
            return $this->db->get()->result();
        }
    }

}
