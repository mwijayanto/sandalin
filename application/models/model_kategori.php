<?php
    class Model_kategori extends CI_Model{
        public function data_aksesori(){
            return $this->db->get_where('tb_barang',array('kategori'=>'Aksesoris'));
        }
        public function data_sandal_pria(){
            return $this->db->get_where('tb_barang',array('kategori'=>'Sandal Pria'));
        }
        public function data_sandal_wanita(){
            return $this->db->get_where('tb_barang',array('kategori'=>'Sandal Wanita'));
        }
        public function data_sandal_anak(){
            return $this->db->get_where('tb_barang',array('kategori'=>'Sandal Anak'));
        }
        // public function data_peralatan_olahraga(){
        //     return $this->db->get_where('tb_barang',array('kategori'=>'Peralatan Olahraga'));
        // }
    }
?>