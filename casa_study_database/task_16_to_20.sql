USE case_study;

-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.
SET sql_safe_updates = 0;
DELETE FROM nhan_vien
where
   ma_nhan_vien  not in ( select temp.ma_nhan_vien from (SELECT 
        hd.ma_nhan_vien
    FROM
        hop_dong hd
            JOIN
        nhan_vien nv ON hd.ma_nhan_vien = nv.ma_nhan_vien
    
    WHERE
        DATE(hd.ngay_lam_hop_dong) BETWEEN '2019-01-01' AND '2021-12-31'
    GROUP BY hd.ma_nhan_vien) temp );
SET sql_safe_updates = 1; 
   
-- 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinium lên Diamond
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.

UPDATE khach_hang 
SET 
    khach_hang.ma_loai_khach = 1
WHERE
    khach_hang.ma_khach_hang = (select temp.ma_khach_hang from (SELECT 
            kh.ma_khach_hang
        FROM
            khach_hang kh
                JOIN
            hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
                JOIN
            hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
                JOIN
            dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
                JOIN
            dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
                JOIN
            loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach
        WHERE
            (lk.ten_loại_khach = 'Platinium'
                AND YEAR(hd.ngay_lam_hop_dong) = '2021')
                AND (dvdk.gia * hdct.so_lương + dv.chi_phi_thue) > 10000000) temp);

-- 18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).

SET sql_safe_updates = 0;
SET FOREIGN_KEY_CHECKS=0;
DELETE FROM khach_hang 
WHERE
    khach_hang.ma_khach_hang IN (SELECT *
    FROM
        (SELECT 
            kh.ma_khach_hang
        FROM
            hop_dong hd
        JOIN khach_hang kh ON kh.ma_khach_hang = hd.ma_khach_hang
        
        WHERE
            (YEAR(hd.ngay_lam_hop_dong) < 2021)) as newtable);
SET FOREIGN_KEY_CHECKS=1;
SET sql_safe_updates = 1;

-- 19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.

UPDATE dich_vu_di_kem 
SET 
    gia = gia * 2
WHERE
    dich_vu_di_kem.ma_dich_vu_di_kem = (SELECT 
            temp.ma_dich_vu_di_kem
        FROM
            (SELECT 
                dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, dvdk.gia
            FROM
                hop_dong_chi_tiet hdct
            JOIN dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
            JOIN hop_dong hd ON hd.ma_hop_dong = hdct.ma_hop_dong
            WHERE
                YEAR(hd.ngay_lam_hop_dong) = 2020
            GROUP BY hdct.ma_dich_vu_di_kem
            HAVING SUM(hdct.so_lương) > 10) AS temp);

-- 20.	Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, thông tin hiển thị bao gồm 
-- id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.

SELECT 
    nv.ma_nhan_vien AS id,
    nv.ho_ten,
    nv.email,
    nv.so_dien_thoai,
    nv.ngay_sinh,
    nv.dia_chi
FROM
    nhan_vien nv
UNION ALL 
SELECT 
    kh.ma_khach_hang,
    kh.ho_ten,
    kh.email,
    kh.so_dien_thoai,
    kh.ngay_sinh,
    kh.dia_chi
FROM
    khach_hang kh;




