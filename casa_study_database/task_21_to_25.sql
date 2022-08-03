USE case_study;

-- 21.	Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “Yên Bái” 
-- và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng là “25/04/2021”.

SELECT 
    *
FROM
    nhan_vien;

CREATE VIEW v_nhan_vien AS
    SELECT 
        nv.ho_ten,
        nv.ma_nhan_vien,
        nv.dia_chi,
        hd.ma_hop_dong,
        hd.ngay_lam_hop_dong
    FROM
        hop_dong hd
            JOIN
        nhan_vien nv ON hd.ma_nhan_vien = nv.ma_nhan_vien
    WHERE
        nv.dia_chi LIKE '% Yên Bái%'
            AND hd.ngay_lam_hop_dong = '2021-04-25';
            
SELECT 
    *
FROM
    v_nhan_vien;  
    
-- 22.	Thông qua khung nhìn v_nhan_vien thực hiện cập nhật địa chỉ thành “Liên Chiểu” 
-- đối với tất cả các nhân viên được nhìn thấy bởi khung nhìn này.
UPDATE v_nhan_vien 
SET 
    v_nhan_vien.dia_chi = 'Liên Chiểu, Đà Nẵng';
    
-- 23.	Tạo Stored Procedure sp_xoa_khach_hang dùng để xóa thông tin của một khách hàng nào đó 
-- với ma_khach_hang được truyền vào như là 1 tham số của sp_xoa_khach_hang.

DELIMITER //
CREATE PROCEDURE delete_kh( id INT)
BEGIN 
	DELETE FROM khach_hang kh
    WHERE id = kh.ma_khach_hang;
END //
DELIMITER ;

CALL delete_kh(8);

-- 24.	Tạo Stored Procedure sp_them_moi_hop_dong dùng để thêm mới vào bảng hop_dong với yêu cầu 
-- sp_them_moi_hop_dong phải thực hiện kiểm tra tính hợp lệ của dữ liệu bổ sung,
-- với nguyên tắc không được trùng khóa chính và đảm bảo toàn vẹn tham chiếu đến các bảng liên quan.

DELIMITER //
CREATE PROCEDURE add_hop_dong(id_hd INT, start_day DATETIME, end_day DATETIME, tien_dat_coc DOUBLE, id_nv INT, id_kh INT, id_dv INT)
BEGIN
IF (exists (SELECT nv.ma_nhan_vien FROM nhan_vien nv WHERE id_nv = nv.ma_nhan_vien)
			AND exists(SELECT kh.ma_khach_hang FROM khach_hang kh WHERE id_kh = kh.ma_khach_hang)
            AND exists(SELECT dv.ma_dich_vu FROM dich_vu dv WHERE id_dv = dv.ma_dich_vu)) THEN
	INSERT INTO hop_dong(ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu)
    VALUES(id_hd, start_day, end_day, tien_dat_coc, id_nv, id_kh, id_dv);
ELSE 
	SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'ko them duoc';
END IF;
END //
DELIMITER ;

CALL add_hop_dong(13, '2020-12-20', '2020-12-25', '0', '3', '2', '3');
CALL add_hop_dong(14, '2020-12-20', '2020-12-25', '0', '3', '2', '3');
CALL add_hop_dong(15, '2020-12-20', '2020-12-25', '0', '3', '2', '3');
CALL add_hop_dong(16, '2020-12-20', '2020-12-25', '0', '3', '2', '3');
CALL add_hop_dong(17, '2020-12-08', '2020-12-08', '0', '3', '1', '100');

-- 25.	Tạo Trigger có tên tr_xoa_hop_dong khi xóa bản ghi trong bảng hop_dong 
-- thì hiển thị tổng số lượng bản ghi còn lại có trong bảng hop_dong ra giao diện console của database.

CREATE TABLE so_luong_hop_dong (
    id INT PRIMARY KEY AUTO_INCREMENT,
    so_luong_hd_tai_thoi_diem_nay INT,
    thoi_gian_cap_nhat DATETIME
);

DROP TRIGGER IF EXISTS tr_xoa_hd;
DELIMITER //
CREATE TRIGGER tr_xoa_hd
AFTER DELETE ON hop_dong
FOR EACH ROW
BEGIN
	DECLARE SL INT;
    SELECT COUNT(ma_hop_dong) INTO SL
    FROM hop_dong;
	INSERT INTO so_luong_hop_dong(so_luong_hd_tai_thoi_diem_nay, thoi_gian_cap_nhat)
    VALUES (SL,NOW());
END //
DELIMITER ;

DELETE FROM hop_dong
WHERE
	ma_hop_dong = 15;

SELECT COUNT(*) AS SL
FROM hop_dong;    
    
SELECT *
FROM so_luong_hop_dong;


    