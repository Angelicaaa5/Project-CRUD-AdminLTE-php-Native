<?php
include "../../conf/conn.php";
if($_POST)
{
$nama = $_POST['nama_barang'];
$harga = $_POST['harga'];
$stok = $_POST['stok'];
$query = ("INSERT INTO barang(id,nama_barang,harga,stok) VALUES ('','".$nama."','".$harga."','".$stok."')");
if(!mysqli_query($connection, "$query")){
die(mysqli_error($connection));
}else{
echo '<script>alert("Data Berhasil Ditambahkan !!!");
window.location.href="../../index.php?page=data_barang"</script>';
}
}
?>