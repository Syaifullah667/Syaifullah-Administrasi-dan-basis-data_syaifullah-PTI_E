-- NAMA  : SYAIFULLAH
-- NIM   : 242421184
-- KELAS : E
-- MODUL : 3

USE kelas_e_mart;

-- =====================================================
-- LATIHAN MANDIRI 1 (ORDER BY)
-- =====================================================

-- Soal 1
SELECT *
FROM tr_penjualan_dqlab
ORDER BY qty, tgl_transaksi;

-- Soal 2
SELECT *
FROM ms_pelanggan
ORDER BY nama_pelanggan;

-- Soal 3
SELECT *
FROM ms_pelanggan
ORDER BY alamat;

-- =====================================================
-- LATIHAN MANDIRI 2 (ASC & DESC)
-- =====================================================

-- Soal 1
SELECT *
FROM tr_penjualan_dqlab
ORDER BY tgl_transaksi DESC, qty ASC;

-- Soal 2
SELECT *
FROM ms_pelanggan
ORDER BY nama_pelanggan DESC;

-- Soal 3
SELECT *
FROM ms_pelanggan
ORDER BY alamat DESC;

-- =====================================================
-- LATIHAN MANDIRI 3 (ORDER BY DENGAN PERHITUNGAN)
-- =====================================================

SELECT nama_produk,
       qty,
       harga,
       diskon,
       (qty * harga - diskon) AS total
FROM tr_penjualan_dqlab
ORDER BY total DESC;

-- =====================================================
-- LATIHAN MANDIRI 4 (WHERE + ORDER BY)
-- =====================================================

-- Soal 1
SELECT *
FROM tr_penjualan_dqlab
WHERE diskon > 0
ORDER BY harga DESC;

-- Soal 2
SELECT nama_produk,
       qty,
       harga
FROM tr_penjualan_dqlab
WHERE harga >= 100000
ORDER BY harga DESC;

-- Soal 3
SELECT nama_produk,
       qty,
       harga
FROM tr_penjualan_dqlab
WHERE harga >= 100000
   OR nama_produk LIKE 'T%'
ORDER BY diskon DESC;

-- =====================================================
-- LATIHAN MANDIRI 5 (GROUP BY & HAVING)
-- =====================================================

-- Soal 1
SELECT nama_produk,
       SUM(qty) AS total_qty
FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING SUM(qty) > 4;

-- Soal 2
SELECT nama_produk,
       SUM(qty) AS total_qty
FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING SUM(qty) = 9;

-- Soal 3
SELECT nama_produk,
       SUM((qty * harga) - diskon) AS total_penjualan
FROM tr_penjualan_dqlab
GROUP BY nama_produk
ORDER BY total_penjualan DESC;
[21.50, 5/7/2026] Rifdan: -- =====================================================
-- LATIHAN MANDIRI MODUL 4
-- =====================================================

-- Soal 1
-- Join 3 tabel menggunakan INNER JOIN

SELECT tp.kode_pelanggan,
       mp.nama_pelanggan,
       mpd.kategori_produk,
       mpd.nama_produk,
       tp.qty
FROM tr_penjualan_dqlab tp
INNER JOIN ms_pelanggan_dqlab mp
ON tp.kode_pelanggan = mp.kode_pelanggan
INNER JOIN ms_produk_dqlab mpd
ON tp.kode_produk = mpd.kode_produk;


-- =====================================================

-- Soal 2
-- LEFT JOIN + filter qty tidak NULL

SELECT tp.kode_pelanggan,
       mp.nama_pelanggan,
       mpd.kategori_produk,
       mpd.nama_produk,
       tp.qty
FROM ms_pelanggan_dqlab mp
LEFT JOIN tr_penjualan_dqlab tp
ON mp.kode_pelanggan = tp.kode_pelanggan
LEFT JOIN ms_produk_dqlab mpd
ON tp.kode_produk = mpd.kode_produk
WHERE tp.qty IS NOT NULL;


-- =====================================================

-- Soal 3
-- INNER JOIN + GROUP BY + SUM

SELECT mpd.kategori_produk,
       SUM(tp.qty) AS total_qty
FROM tr_penjualan_dqlab tp
INNER JOIN ms_pelanggan_dqlab mp
ON tp.kode_pelanggan = mp.kode_pelanggan
INNER JOIN ms_produk_dqlab mpd
ON tp.kode_produk = mpd.kode_produk
GROUP BY mpd.kategori_produk;


-- =====================================================

-- Soal 4
-- Self JOIN pada tabel ms_produk

SELECT p1.kode_produk,
       p1.nama_produk,
       p2.kode_produk,
       p2.nama_produk
FROM ms_produk_dqlab p1
INNER JOIN ms_produk_dqlab p2
ON p1.kode_produk = p2.kode_produk;
