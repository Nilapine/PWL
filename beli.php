<?php
session_start();

// menampilkan id_produk dari url
$id_produk = $_GET['id'];

// var_dump($id_produk);
// die;

// jika sudah ada produk di login, maka produk itu jumlahnya +1
if(isset($_SESSION['login'][$id_produk])){
  $_SESSION['login'][$id_produk] += 1;
}
// selain itu (belum ada di login), maka produk itu dianggap dibeli 1
else{
  $_SESSION['login'][$id_produk] = 1;
}

// echo "<pre>";
// print_r($_SESSION);
// echo "</pre>";

// Dialihkan ke halaman login
echo "<script>alert('Silakan login terlebih dahulu'));</script>";
echo "<script>location='login.php';</script>";