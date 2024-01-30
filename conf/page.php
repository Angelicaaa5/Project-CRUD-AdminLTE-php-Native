<?php
if (isset($_GET['page'])) {
    $page = $_GET['page'];
    switch ($page) {
            // Beranda
        case 'data_mahasiswa':
            include 'pages/mahasiswa/data_mahasiswa.php';
            break;
        case 'tambah_mahasiswa':
            include 'pages/mahasiswa/tambah_mahasiswa.php';
            break;
        case 'ubah_mahasiswa';
            include 'pages/mahasiswa/ubah_mahasiswa.php';
            break;
        case 'data_barang';
            include 'pages/barang/data_barang.php';
            break;
        case 'tambah_barang':
            include 'pages/barang/tambah_barang.php';
            break;
        case 'ubah_barang';
            include 'pages/barang/ubah_barang.php';
            break;
        case 'transaksi_barang';
            include 'pages/barang/transaksi_barang.php';
            break;
        case 'data_multibarang':
            include 'pages/multibarang/data_transaksi_barang.php';
            break;
        case 'bayar':
            include 'pages/multibarang/bayar.php';
            break;
        case 'data_penjualan_single':
            include 'pages/barang/data_penjualan_single.php';
            break;
        case 'data_penjualan_multi':
            include 'pages/multibarang/data_penjualan_multi.php';
            break;
        case 'data_detail':
            include 'pages/multibarang/data_detail.php';
            break;
    }
} else {
    include "pages/beranda.php";
}