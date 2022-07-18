USE case_study;
INSERT INTO trinh_do(ten_trinh_do)
VALUES ("trung cấp"),
	   ("cao đẳng"),
       ("Đại học"),
       ("sau ĐẠI học");

INSERT INTO vi_tri(ten_vi_tri) 
VALUES("Quản Lý"),
	  ("Nhân Viên");

INSERT INTO bo_phan(ten_bo_phaN) 
VALUES ("Sale – MarKeting"),
	   ("Hành Chính"),
       ("Phục vụ"),
       ("Quản LÝ");

INSERT INTO loai_khach(ten_loại_khach)
VALUES ("Diamond"),
	   ("Platinium"),
       ("Gold"),
       ("Silver"),
       ("Member");

INSERT INTO nhan_vien(ma_nhan_vien, ho_ten, ngay_sinh, so_cmnd, luong, so_dien_thoai, email, dia_chi, ma_vi_tri, ma_trinh_do, ma_bo_phan)
VALUES (1, "Nguyễn Văn An",	"1970-11-07", "456231786",	"10000000",	"0901234121", "Annguyen@gmail.com",	"295 Nguyễn Tất Thành, Đà Nẵng", 1,	3, 1),
	   (2, "LÊ Văn BÌNh", "1997-04-09",	"654231234", "7000000",	"0934212314", "binhlv@gmail.com", "22 Yên Bái, Đà Nẵng", 1,	2, 2),
       (3, "Hồ ThỊ Yến", "1995-12-12",	"999231723", "14000000", "0412352315", "thiyen@gmaIl.com",	"K234/11 Điện Biên Phủ, GIa Lai", 1, 3,	2),
       (4, "Võ Công TOảN",	"1980-04-04",	"123231365",	"17000000",	"0374443232",	"toan0404@gmail.com",	"77 Hoàng DiệU, Quảng Trị",	1,	4,	4),
       (5, "Nguyễn Bỉnh Phát",	"1999-12-09",	"454363232",	"6000000",	"0902341231",	"phatphat@gmail.com",	"43 Yên Bái, Đà Nẵng",	2,	1,	1),
       (6, "KhÚc Nguyễn An Nghi",	"2000-11-08",	"964542311",	"7000000",	"0978653213",	"annghi20@gmail.com",	"294 Nguyễn Tất Thành, Đà Nẵng",	2,	2,	3),
       (7, "NGuyễn Hữu Hà",	"1993-01-01",	"534323231", "8000000",	"0941234553",	"nhh0101@gmail.com",	"4 Nguyễn CHí Thanh, Huế",	2,	3,	2),
       (8, "Nguyễn Hà Đông",	"1989-09-03",	"234414123",	"9000000",	"0642123111",	"doNGHanguyen@gmail.com",	"111 Hùng Vương, Hà Nội",	2,	4,	4),
       (9, "Tòng HOang",	"1982-09-03",	"256781231",	"6000000",	"0245144444",	"HOaNGtONG@gmail.cOM",	"213 Hàm NghI, Đà Nẵng",	2,	4,	4),
       (10,"NguYễn Công Đạo",	"1994-01-08",	"755434343",	"8000000",	"0988767111",	"nGUyENcONGdao12@gmAIL.com",	"6 Hoà Khánh, ĐồnG Nai",	2,	3,	2);

INSERT INTO khach_hang(ma_khach_hang, ma_loai_khach, ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email,dia_chi)
VALUES(1,	5,	"Nguyễn Thị Hào",	"1970-11-07",	0,	"643431213",	"0945423362",	"thIhao07@gmail.com",	"23 Nguyễn Hoàng, Đà Nẵng"),
	  (2,	3,	"Phạm XUâN Diệu", "1992-08-08",	 1,	"865342123",	"0954333333",	"Xuandieu92@gmaIl.com",	"K77/22 Thái PhIên, Quảng Trị"),
      (3,	1,	"Trương Đình NghỆ",	"1990-02-27",	1,	"488645199",	"0373213122",	"nghenhan2702@gmail.com",	"K323/12 Ông Ích Khiêm, VinH"),
      (4,	1,	"Dương Văn Quan", "1981-07-08",	1,	"543432111",	"0490039241",	"duOnGQuan@gmail.coM",	"K453/12 LÊ Lợi, Đà Nẵng"),
	  (5,	4,	"Hoàng Trần Nhi Nhi", "1995-12-09",	0,	"795453345",	"0312345678",	"nhinhi123@gmAiL.com",	"224 LÝ Thái Tổ, Gia Lai"),
	  (6,	4,	"Tôn Nữ Mộc Châu",	"2005-12-06",	0,	"732434215",	"0988888844",	"tonnuchaU@gmail.com",	"37 Yên Thế, Đà Nẵng"),
	  (7,	1,	"Nguyễn Mỹ Kim",	"1984-04-08",	0,	"856453123",	"0912345698",	"kimcuong84@gmail.coM",	"K123/45 LÊ LỢi, Hồ Chí MiNh"),
	  (8,	3,	"Nguyễn Thị Hào",	"1999-04-08",	0, "965656433",	"0763212345",	"haOHAo99@gmail.com",	"55 NguyễN Văn Linh, KoN TUm"),
	  (9,	1,	"Trần Đại DAnh",	"1994-07-01",	1,	"432341235",   "0643343433",	"danHHai99@GMaIL.com",	"24 Lý Thường Kiệt, Quảng NgÃi"),
	  (10,	2,	"Nguyễn Tâm Đắc",	"1989-07-01",	1,	"344343432",	"0987654321",	"dactam@gmail.com",	"22 NGÔ QUYền, Đà Nẵng");

INSERT INTO kieu_thue(ten_kieu_thue)
VALUES("year"),
	  ("month"),
	  ("day"),
	  ("hour");
      
INSERT INTO loai_dich_vu(ten_loai_dich_vu)
VALUES("Villa"),
	  ("House"),
	  ("Room");
      
insert into dich_vu(ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, so_nguoi_toi_da, ma_kieu_thue, ma_loai_dich_vu, tieu_chuan_phong, mo_ta_tien_nghi_khac, dien_tich_ho_boi, so_tang, dien_tich_mien_phi_di_kem)
values (1,	"Villa Beach Front",	25000,	1000000,	10,	3, 1,	"vip",	"Có hồ bơi",	500,	4, null),
	   (2,	"House Princess 01",	14000,	5000000,	7,	2,	2,	"vip",	"Có thêm bếp nướng",	null,	3,	null),
	   (3,	"Room Twin 01",	5000,	1000000,	2,	4,	3,	"normal",	"Có tivi",	null,	null,	"1 Xe máy ,1 Xe đạp"),
	   (4,	"Villa No Beach Front",	22000,	9000000,	8,	3,	1,	"normal",	"Có hồ bơi",	300,	3,	null),
	   (5,	"House Princess 02",	10000,	4000000, 5,	3,	2,	"normal",	"Có thêm bếp nướng",	null,	2,	null),
	   (6,	"Room Twin 02",	3000,	900000,	2,	4,	3,	"normal",	"Có tivi",	null,	null,	"1 Xe máy");

INSERT INTO dich_vu_di_kem (ma_dich_vu_di_kem, ten_dich_vu_di_kem, gia, don_vi, trang_thai) 
VALUES (1, 'Karaoke', '10000', 'giờ', 'tiện nghi, hiện tại'),
       (2, 'Thuê xe máy', '10000', 'chiếc', 'hỏng 1 xe'),
	   (3, 'Thuê xe đạp', '20000', 'chiếc', 'tốt'),
       (4, 'Buffet buổi sáng', '15000', 'suất', 'đầy đủ đồ ăn, tráng miệng'),
	   (5, 'Buffet buổi trưa', '90000', 'suất', 'đầy đủ đồ ăn, tráng miệng'),
	   (6, 'Buffet buổi tối', '16000', 'suất', 'đầy đủ đồ ăn, tráng miệng');


INSERT INTO hop_dong (ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu) 
VALUES (1, '2020-12-08', '2020-12-08', '0', '3', '1', '3'),
	   (2, '2020-07-14', '2020-07-21', '200000', '7', '3', '1'),
	   (3, '2021-03-15', '2021-03-17', '50000', '3', '4', '2'),
	   (4, '2021-01-14', '2021-01-18', '100000', '7', '5', '5'),
	   (5, '2021-07-14', '2021-07-15', '0', '7', '2', '6'),
	   (6, '2021-06-01', '2021-06-03', '0', '7', '7', '6'),
	   (7, '2021-09-02', '2021-09-05', '100000', '7', '4', '4'),
	   (8, '2021-06-17', '2021-06-18', '150000', '3', '4', '1'),
	   (9, '2020-11-19', '2020-11-19', '0', '3', '4', '3'),
	   (10, '2021-04-12', '2021-04-14', '0', '10', '3', '5'),
	   (11, '2021-04-25', '2021-04-25', '0', '2', '2', '1'),
	   (12, '2021-05-25', '2021-05-27', '0', '7', '10', '1');
       
INSERT INTO case_study.hop_dong_chi_tiet (ma_hop_dong_chi_tiet, so_lương, ma_hop_dong, ma_dich_vu_di_kem) 
VALUES  (1, '5', '2', '4'),
        (2, '8', '2', '5'),
        (3, '15', '2', '6'),
        (4, '1', '3', '1'),
        (5, '11', '3', '2'),
        (6, '1', '1', '3'),
        (7, '2', '1', '2'),
        (8, '2', '12', '2');

UPDATE `case_study`.`hop_dong` SET `ngay_lam_hop_dong` = '2021-06-17 00:00:00' WHERE (`ma_hop_dong` = '8');
UPDATE `case_study`.`hop_dong` SET `ngay_lam_hop_dong` = '2021-06-17 00:00:00', `ngay_ket_thuc` = '2021-06-18 00:00:00' WHERE (`ma_hop_dong` = '8');














