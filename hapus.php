<?php
include 'config.php';
$id = $_GET['id'];

$conn->query("DELETE FROM hewan WHERE id_hewan=$id");
echo "<script>alert('Data berhasil dihapus!'); window.location='index.php';</script>";
?>