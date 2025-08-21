<?php 
include 'config.php'; 
$id = $_GET['id'];
$data = $conn->query("SELECT * FROM hewan WHERE id_hewan=$id")->fetch_assoc();
?>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Edit Hewan</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
  <h2 class="mb-4">Edit Hewan</h2>
  <form method="POST">
    <div class="mb-3">
      <label>Nama Hewan</label>
      <input type="text" name="nama_hewan" value="<?= $data['nama_hewan'] ?>" class="form-control" required>
    </div>
    <div class="mb-3">
      <label>Jenis Hewan</label>
      <input type="text" name="jenis_hewan" value="<?= $data['jenis_hewan'] ?>" class="form-control" required>
    </div>
    <div class="mb-3">
      <label>Asal</label>
      <input type="text" name="asal" value="<?= $data['asal'] ?>" class="form-control" required>
    </div>
    <div class="mb-3">
      <label>Jumlah</label>
      <input type="number" name="jumlah" value="<?= $data['jumlah'] ?>" class="form-control" required>
    </div>
    <button type="submit" name="update" class="btn btn-primary">Update</button>
    <a href="index.php" class="btn btn-secondary">Kembali</a>
  </form>

  <?php
  if (isset($_POST['update'])) {
    $nama   = $_POST['nama_hewan'];
    $jenis  = $_POST['jenis_hewan'];
    $asal   = $_POST['asal'];
    $jumlah = $_POST['jumlah'];

    $sql = "UPDATE hewan 
            SET nama_hewan='$nama', jenis_hewan='$jenis', asal='$asal', jumlah='$jumlah' 
            WHERE id_hewan=$id";
    if ($conn->query($sql)) {
      echo "<script>alert('Data berhasil diperbarui!'); window.location='index.php';</script>";
    } else {
      echo "Error: " . $conn->error;
    }
  }
  ?>
</div>

</body>
</html>