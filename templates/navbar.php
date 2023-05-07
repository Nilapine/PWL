  <!-- navbar -->
  <nav class="navbar navbar-light" style="background-color: #D6EFED;">
  <a class="navbar-brand">LINE PART</a>
    <div class="container">
      <ul class="nav navbar-nav" >
        <li><a href="index.php">Home</a></li>
        <li><a href="produk.php">Produk</a></li>
        <!-- Jika sudah login (ada login pelanggan) -->
        <?php if(isset($_SESSION["pelanggan"])): ?>
          <li><a href="logout.php">Logout</a></li>
          <li><a href="riwayat.php">Riwayat Belanja</a></li>
        <!-- Selain itu (belum login / belum ada session pelanggan) -->
        <?php else: ?>
          <li><a href="login.php">Login</a></li>
          <li><a href="daftar.php">Daftar</a></li>
        <?php endif; ?>

        <li><a href="keranjang.php">Keranjang</a></li>
        <li><a href="checkout.php">Checkout</a></li>

      </ul>

      <form action="pencarian.php" method="get" class="navbar-form navbar-right">
        <input type="text" class="form-control" name="keyword">
        <button class="btn btn-light">Cari</button>
      </form>
    </div>
  </nav>