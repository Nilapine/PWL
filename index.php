<?php
session_start();
//koneksi ke database
include 'koneksi.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>LINE PART</title>
  <link rel="stylesheet" href="admin/assets/css/bootstrap.css">
  <link rel="stylesheet" href="style.css">
</head>
<body>

<?php include 'templates/navbar.php'; ?>
<div>
  <h1>LinePart</h1>
  <div class="gambar">
    <img src="media/kursi.jpg" >
  </div>
      <p><b>LinePart</b> merupakan website belanja online yang sederhana sehingga membantu pengguna dalam melakukan belanja. <br>
      Dengan besi dan kayu yang berkualitas, serta tangan yang mahir. Silakan pilih furnitur sesukamu.<br>
      <b>For your dream home.</b></p>

    </div>
<!-- konten   -->
<section class="content">
  <div class="container">
    <div class="row">
      <?php
      $ambil = $koneksi->query("SELECT * FROM produk");
      while($perproduk = $ambil->fetch_assoc()):
      ?>
      <div class="col-md-3">
        <div class="thumbnail">
          <img src="foto_produk/<?= $perproduk['foto_produk']; ?>">
          <div class="caption">
            <h3><?= $perproduk['nama_produk']; ?></h3>
            <h5>Rp. <?= number_format($perproduk['harga_produk']); ?>,-</h5>
            <a href="beli.php?id=<?= $perproduk['id_produk']; ?>" class="btn btn-primary">Beli</a>
            <a href="detail.php?id=<?= $perproduk['id_produk']; ?>" class="btn btn-default">Detail</a>
          </div>
        </div>
      </div>
      <?php endwhile; ?>
    </div>
  </div>
</section>

<?php include 'templates/footer.php'; ?>
  
</body>
</html>