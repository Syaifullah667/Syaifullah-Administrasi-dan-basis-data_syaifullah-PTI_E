-- NAMA  : Syaifullah
-- NIM   : 242421184
-- KELAS : E
-- MODUL : 2

-- select statement
-- perintah yang digunakan untuk mengambil data dari satu atau lebih tabel database

-- objek database
-- 1. database
-- 2. table
-- 3. kolom
-- 4. nilai (value/data)

-- menggunakan database
USE kelas_e_mart;

-- praktek 1
SELECT nama_produk FROM produk;

-- praktek 2
-- mengambil dua kolom dari sebuah tabel
SELECT nama_produk, harga FROM produk;

-- praktek 3
-- mengambil seluruh kolom dari sebuah tabel
SELECT * FROM produk;

-- latihan mandiri
SELECT kode_produk, nama_produk, nama_produk FROM produk;
SELECT * FROM pelanggan;

-- PREFIX DAN ALIAS
SELECT kelas_e_mart.pelanggan.nama_pelanggan
FROM pellnggan;

SELECT nama_pelnggan FROM pelanggan;

-- alias
SELECT nama_produk AS np FROM produk;

-- tanpa AS
SELECT nama_produk np FROM produk;

-- alias pada nama tabel
SELECT nama_produk FROM produk AS msp;
SELECT msp.nama_produk FROM produk AS msp;

-- case 1
SELECT nama_pelanggan, alamat FROM pelanggan;

-- case 2
SELECT nama_produk, harga FROM produk;
