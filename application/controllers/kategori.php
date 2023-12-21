<?php
    class Kategori extends CI_Controller{
        public function aksesoris(){
            $data['aksesori']=$this->model_kategori->data_aksesori()->result();
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar');
            $this->load->view('aksesoris',$data);
            $this->load->view('templates/footer');
        }
        public function sandal_pria(){
            $data['sandalpria']=$this->model_kategori->data_sandal_pria()->result();
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar');
            $this->load->view('sandalpria',$data);
            $this->load->view('templates/footer');
        }
        public function sandal_wanita(){
            $data['sandalwanita']=$this->model_kategori->data_sandal_wanita()->result();
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar');
            $this->load->view('sandalwanita',$data);
            $this->load->view('templates/footer');
        }
        public function sandal_anak(){
            $data['sandalanak']=$this->model_kategori->data_sandal_anak()->result();
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar');
            $this->load->view('sandalanak',$data);
            $this->load->view('templates/footer');
        }
    }
?>