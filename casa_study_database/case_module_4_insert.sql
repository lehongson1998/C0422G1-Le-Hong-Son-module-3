INSERT INTO education_degree(education_name)
VALUES ("trung cấp"),
	   ("cao đẳng"),
       ("Đại học"),
       ("sau ĐẠI học");

INSERT INTO case_module_4.position(position_name) 
VALUES("Quản Lý"),
	  ("Nhân Viên");

INSERT INTO division(division_name) 
VALUES ("Sale – MarKeting"),
	   ("Hành Chính"),
       ("Phục vụ"),
       ("Quản LÝ");

INSERT INTO type_customer(type_name_customer)
VALUES ("Diamond"),
	   ("Platinium"),
       ("Gold"),
       ("Silver"),
       ("Member");
       
INSERT INTO rent_type(name)
VALUES("year"),
	  ("month"),
	  ("day"),
	  ("hour");
      
INSERT INTO facility_type(name)
VALUES("Villa"),
	  ("House"),
	  ("Room");

INSERT INTO employee(name, date_of_birth, id_card, salary, phone_number, email, address, position_id, education_id, division_id)
VALUES ("Nguyễn Văn An",	"1970-11-07", "456231786",	"10000000",	"0901234121", "Annguyen@gmail.com",	"295 Nguyễn Tất Thành, Đà Nẵng", 1,	3, 1),
	   ("LÊ Văn BÌNh", "1997-04-09",	"654231234", "7000000",	"0934212314", "binhlv@gmail.com", "22 Yên Bái, Đà Nẵng", 1,	2, 2),
       ("Hồ ThỊ Yến", "1995-12-12",	"999231723", "14000000", "0412352315", "thiyen@gmaIl.com",	"K234/11 Điện Biên Phủ, GIa Lai", 1, 3,	2),
       ("Võ Công TOảN",	"1980-04-04",	"123231365",	"17000000",	"0374443232",	"toan0404@gmail.com",	"77 Hoàng DiệU, Quảng Trị",	1,	4,	4),
       ("Nguyễn Bỉnh Phát",	"1999-12-09",	"454363232",	"6000000",	"0902341231",	"phatphat@gmail.com",	"43 Yên Bái, Đà Nẵng",	2,	1,	1),
       ("KhÚc Nguyễn An Nghi",	"2000-11-08",	"964542311",	"7000000",	"0978653213",	"annghi20@gmail.com",	"294 Nguyễn Tất Thành, Đà Nẵng",	2,	2,	3),
       ("NGuyễn Hữu Hà",	"1993-01-01",	"534323231", "8000000",	"0941234553",	"nhh0101@gmail.com",	"4 Nguyễn CHí Thanh, Huế",	2,	3,	2),
       ("Nguyễn Hà Đông",	"1989-09-03",	"234414123",	"9000000",	"0642123111",	"doNGHanguyen@gmail.com",	"111 Hùng Vương, Hà Nội",	2,	4,	4),
       ("Tòng HOang",	"1982-09-03",	"256781231",	"6000000",	"0245144444",	"HOaNGtONG@gmail.cOM",	"213 Hàm NghI, Đà Nẵng",	2,	4,	4),
       ("NguYễn Công Đạo",	"1994-01-08",	"755434343",	"8000000",	"0988767111",	"nGUyENcONGdao12@gmAIL.com",	"6 Hoà Khánh, ĐồnG Nai",	2,	3,	2);
       
INSERT INTO customer(type_customer_id, name, date_of_birth, gender, id_card, phone_number, email, address)
VALUES(5,	"Nguyễn Thị Hào",	"1970-11-07",	0,	"643431213",	"0945423362",	"thIhao07@gmail.com",	"23 Nguyễn Hoàng, Đà Nẵng"),
	  (3,	"Phạm XUâN Diệu", "1992-08-08",	 1,	"865342123",	"0954333333",	"Xuandieu92@gmaIl.com",	"K77/22 Thái PhIên, Quảng Trị"),
      (1,	"Trương Đình NghỆ",	"1990-02-27",	1,	"488645199",	"0373213122",	"nghenhan2702@gmail.com",	"K323/12 Ông Ích Khiêm, VinH"),
      (1,	"Dương Văn Quan", "1981-07-08",	1,	"543432111",	"0490039241",	"duOnGQuan@gmail.coM",	"K453/12 LÊ Lợi, Đà Nẵng"),
	  (4,	"Hoàng Trần Nhi Nhi", "1995-12-09",	0,	"795453345",	"0312345678",	"nhinhi123@gmAiL.com",	"224 LÝ Thái Tổ, Gia Lai"),
	  (4,	"Tôn Nữ Mộc Châu",	"2005-12-06",	0,	"732434215",	"0988888844",	"tonnuchaU@gmail.com",	"37 Yên Thế, Đà Nẵng"),
	  (1,	"Nguyễn Mỹ Kim",	"1984-04-08",	0,	"856453123",	"0912345698",	"kimcuong84@gmail.coM",	"K123/45 LÊ LỢi, Hồ Chí MiNh"),
	  (3,	"Nguyễn Thị Hào",	"1999-04-08",	0, "965656433",	"0763212345",	"haOHAo99@gmail.com",	"55 NguyễN Văn Linh, KoN TUm"),
	  (1,	"Trần Đại DAnh",	"1994-07-01",	1,	"432341235",   "0643343433",	"danHHai99@GMaIL.com",	"24 Lý Thường Kiệt, Quảng NgÃi"),
	  (2,	"Nguyễn Tâm Đắc",	"1989-07-01",	1,	"344343432",	"0987654321",	"dactam@gmail.com",	"22 NGÔ QUYền, Đà Nẵng");
      
insert into facility(name, area, cost, max_people, rent_type_id, facility_type_id, standard_room, description_other_convenience, pool_area, number_of_floors, facility_free)
values ("Villa Beach Front",	25000,	1000000,	10,	3, 1,	"vip",	"Có hồ bơi",	500,	4, null),
	   ("House Princess 01",	14000,	5000000,	7,	2,	2,	"vip",	"Có thêm bếp nướng",	0,	3,	null),
	   ("Room Twin 01",	5000,	1000000,	2,	4,	3,	"normal",	"Có tivi",	0,	0,	"1 Xe máy ,1 Xe đạp"),
	   ("Villa No Beach Front",	22000,	9000000,	8,	3,	1,	"normal",	"Có hồ bơi",	300,	3,	null),
	   ("House Princess 02",	10000,	4000000, 5,	3,	2,	"normal",	"Có thêm bếp nướng",	0,	2,	null),
	   ("Room Twin 02",	3000,	900000,	2,	4,	3,	"normal",	"Có tivi",	0,	0,	"1 Xe máy");
       
INSERT INTO attach_facility (name, cost, unit, status) 
VALUES ('Karaoke', '10000', 'giờ', 'tiện nghi, hiện tại'),
       ('Thuê xe máy', '10000', 'chiếc', 'hỏng 1 xe'),
	   ('Thuê xe đạp', '20000', 'chiếc', 'tốt'),
       ('Buffet buổi sáng', '15000', 'suất', 'đầy đủ đồ ăn, tráng miệng'),
	   ('Buffet buổi trưa', '90000', 'suất', 'đầy đủ đồ ăn, tráng miệng'),
	   ('Buffet buổi tối', '16000', 'suất', 'đầy đủ đồ ăn, tráng miệng');
      
INSERT INTO contract (start_day, end_day, deposit, employee_id, customer_id, facility_id) 
VALUES ('2020-12-08', '2020-12-08', '0', '3', '1', '33'),
	   ('2020-07-14', '2020-07-21', '200000', '7', '3', '31'),
	   ('2021-03-15', '2021-03-17', '50000', '3', '4', '32'),
	   ('2021-01-14', '2021-01-18', '100000', '7', '5', '35'),
	   ('2021-07-14', '2021-07-15', '0', '7', '2', '36'),
	   ('2021-06-01', '2021-06-03', '0', '7', '7', '36'),
	   ('2021-09-02', '2021-09-05', '100000', '7', '4', '35'),
	   ('2021-06-17', '2021-06-18', '150000', '3', '4', '31'),
	   ('2020-11-19', '2020-11-19', '0', '3', '4', '33'),
	   ('2021-04-12', '2021-04-14', '0', '10', '3', '35'),
	   ('2021-04-25', '2021-04-25', '0', '2', '2', '32'),
	   ('2021-05-25', '2021-05-27', '0', '7', '10', '32');
      
INSERT INTO contract_detail (quantity, contract_id, attach_id) 
VALUES  ('5', '2', '4'),
        ('8', '2', '5'),
        ('15', '2', '6'),
        ('1', '3', '1'),
        ('11', '4', '2'),
        ('1', '1', '3'),
        ('2', '1', '2'),
        ('2', '12', '2');
      
      
      
      
      
      