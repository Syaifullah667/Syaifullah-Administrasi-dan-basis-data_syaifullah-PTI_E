-- Nama : syaifullah
-- NIM 	: 24241184
-- Kelas : PTI E
-- Modul : 1

-- membuat database
CREATE DATABASE kelas_e_mart;

-- memilih databse
USE kelas_e_mart;

-- membuat tabel dalam database
CREATE TABLE pelanggan(
kode_pelanggan VARCHAR(50) PRIMARY KEY,
no_urut INT NOT NULL,
nama_pelanggan VARCHAR(100) NOT NULL,
alamat VARCHAR(200)
);

-- input data ke table
INSERT INTO pelanggan(
kode_pelanggan,
no_urut,
nama_pelanggan
) VALUES
("dqlabcust00", 0, "Pelanggan Non Member");

-- input multiple values untuk 1 quary
INSERT INTO pelanggan(
kode_pelanggan,
no_urut,
nama_pelanggan,
alamat
) VALUES
("dqlabcust01", 1, "Eva Novianti, S.H.", "Vila Sempilan, No. 67 - Kota B"),
("dqlabcust02",2,"Heidi Goh","Vila Sempilan, No. 11 - Kota B"),
("dqlabcust03",3,"Unang Handoko","Vila Sempilan, No. 1 - Kota B"),
("dqlabcust04",4,"Jokolono Sukarman","Vila Permata Intan Berkilau, Blok C5-7"),
("dqlabcust05",5,"Tommy Sinaga","Vila Permata Intan Berkilau, Blok A1/20"),
("dqlabcust06",6,"Irwan Setianto","Vila Gunung Seribu, Blok O1 - No. 1 - Kota C"),
("dqlabcust07",7,"Agus Cahyono","Vila Gunung Seribu, Blok F4 - No. 8"),
("dqlabcust08",8,"Maria Sirait","Vila Bukit Sagitarius, Gang. Sawit No. 3"),
("dqlabcust09",9,"Ir. Ita Nugraha","Vila Bukit Sagitarius, Gang Kelapa No. 6"),
("dqlabcust10",10,"Djoko Wardoyo, Drs.","Vila Bukit Sagitarius, Blok A1 No. 1");

create table penjualan(
kode_urut_transaksi INT PRIMARY KEY,
kode_transaksi VARCHAR(100),
kode_pelanggan VARCHAR(100),
tgl_transaksi VARCHAR(100),
no_urut INT NOT NULL,
kode_produk VARCHAR(50),
nama_produk VARCHAR(100),
qty INT NOT NULL,
harga VARCHAR(50),
diskon_persen VARCHAR(100)
); 

INSERT INTO penjualan(
kode_urut_transaksi,
kode_transaksi,
kode_pelanggan,
tgl_transaksi,
no_urut,
kode_produk,
nama_produk,
qty,
harga,
diskon_persen
) VALUES
(1, "tr-001", "dqlabcust07", "2020-05-01 00:00:00", 1, "prod-01", "Kotak Pensil DQLab", 5, 62500.0, 0.0),
(2, "tr-001", "dqlabcust07", "2020-05-01 00:00:00", 2, "prod-03", "Flashdisk DQLab 32 GB", 1, 120000.0, 25.0),
(3, "tr-001", "dqlabcust07", "2020-05-01 00:00:00", 3, "prod-09", "Buku Planner Agenda DQSquad", 2, 92000.0, 0.0),
(4, "tr-001", "dqlabcust07", "2020-05-01 00:00:00", 4, "prod-03", "Flashdisk DQLab 32 GB", 3, 120000.0, 0.0),
(5, "tr-001", "dqlabcust07", "2020-05-01 00:00:00", 5, "prod-04", "Gift Voucher DQLab 100rb", 4, 100000.0, 0.0),
(6, "tr-002", "dqlabcust07", "2020-05-01 00:00:00", 1, "prod-05", "Sticky Notes DQLab 500 sheets", 3, 48000.0, 0.0),
(7, "tr-002", "dqlabcust07", "2020-05-01 00:00:00", 2, "prod-07", "Tas Travel Organizer DQLab", 1, 48000.0, 0.0),
(8, "tr-003", "dqlabcust03", "2020-05-03 00:00:00", 1, "prod-02", "Flashdisk DQLab 64 GB", 2, 250000.0, 12.5),
(9, "tr-004", "dqlabcust03", "2020-05-03 00:00:00", 1, "prod-05", "Sticky Notes DQLab 500 sheets", 4, 48000.0, 0.0),
(10, "tr-004", "dqlabcust03", "2020-05-03 00:00:00", 2, "prod-03", "Flashdisk DQLab 32 GB", 5, 120000.0, 0.0),
(11, "tr-005", "dqlabcust08", "2020-06-12 00:00:00", 1, "prod-09", "Buku Planner Agenda DQSquad", 2, 92000.0, 0.0),
(12, "tr-005", "dqlabcust08", "2020-06-12 00:00:00", 2, "prod-01", "Kotak Pensil DQLab", 3, 62500.0, 0.0),
(13, "tr-005", "dqlabcust08", "2020-06-12 00:00:00", 3, "prod-03", "Flashdisk DQLab 32 GB", 4, 120000.0, 0.0),
(14, "tr-006", "dqlabcust02", "2020-06-19 00:00:00", 1, "prod-04", "Gift Voucher DQLab 250rb", 4, 250000.0, 0.0),
(15, "tr-006", "dqlabcust02", "2020-06-19 00:00:00", 2, "prod-08", "Gantungan Kunci DQLab", 2, 15800.0, 0.0);

CREATE TABLE produk(
kode_produk int,
no_urut int,
kategori_produk varchar(50),
nama_produk varchar(20),
harga float
);

INSERT INTO produk (kode_produk, kategori_produk, nama_produk, harga)
VALUES 
("prod-01", "Alat Tulis Kantor", "Kotak Pensil DQLab", 62500.0),
("prod-02", "Aksesoris Komputer", "Flashdisk DQLab 64 GB", 55000.0),
("prod-03", "Gift & Voucher", "Gift Voucher DQLab 100rb", 100000.0),
("prod-04", "Aksesoris Komputer", "Flashdisk DQLab 32 GB", 40000.0),
("prod-05", "Gift & Voucher", "Gift Voucher DQLab 250rb", 250000.0),
("prod-06", "Alat Tulis Kantor", "Pulpen Multifunction + Laser DQLab", 92500.0),
("prod-07", "Gift & Voucher", "Tas Travel Organizer DigiSkills.id", 48000.0),
("prod-08", "Gift & Voucher", "Gantungan Kunci DQLab", 15800.0),
("prod-09", "Alat Tulis Kantor", "Buku Planner Agenda DQLab", 92000.0),
("prod-10", "Alat Tulis Kantor", "Sticky Notes DQLab 500 sheets", 55000.0);

INSERT INTO produk (kode_produk, no_urut, kategori_produk, nama_produk, harga) 
VALUES 
("prod-01", "1", "Alat Tulis Kantor", "Kotak Pensil DQLab", 62500.0),
("prod-02", "2", "Aksesoris Komputer", "Flashdisk DQLab 64 GB", 55000.0),
("prod-03", "3", "Gift & Voucher", "Gift Voucher DQLab 100rb", 100000.0),
("prod-04", "4", "Aksesoris Komputer", "Flashdisk DQLab 32 GB", 40000.0),
("prod-05", "5", "Gift & Voucher", "Gift Voucher DQLab 250rb", 250000.0),
("prod-06", "6", "Alat Tulis Kantor", "Pulpen Multifunction + Laser DQLab", 92500.0),
("prod-07", "7", "Gift & Voucher", "Tas Travel Organizer DigiSkills.id", 48000.0),
("prod-08", "8", "Gift & Voucher", "Gantungan Kunci DQLab", 15800.0),
("prod-09", "9", "Alat Tulis Kantor", "Buku Planner Agenda DQLab", 92000.0),
("prod-10", "10", "Alat Tulis Kantor", "Sticky Notes DQLab 500 sheets", 55000.0);

select * from penjualan;
