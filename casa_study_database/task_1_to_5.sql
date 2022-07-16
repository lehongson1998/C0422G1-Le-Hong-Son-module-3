USE case_study;

SELECT 
    *
FROM
    nhan_vien
WHERE
    nhan_vien.ho_ten REGEXP '^[HKT]'
        AND CHAR_LENGTH(ho_ten) BETWEEN 3 AND 15;
        
SELECT 
    *
FROM
    khach_hang
WHERE
    (YEAR(CURDATE()) - YEAR(khach_hang.ngay_sinh) BETWEEN 18 AND 50)
        AND (khach_hang.dia_chi LIKE '% Đà Nẵng'
        OR khach_hang.dia_chi LIKE '% Quảng Trị');
  
SELECT 
    kh.ma_khach_hang,
    kh.ho_ten,
    COUNT(hd.ma_khach_hang) AS so_lan_dat_phong
FROM
    khach_hang kh
        JOIN
    hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
        JOIN
    loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach
WHERE
    lk.ma_loai_khach = 1
GROUP BY ma_khach_hang
ORDER BY so_lan_dat_phong;

SELECT 
    kh.ma_khach_hang,
    kh.ho_ten,
    lk.ten_loại_khach,
    hd.ma_hop_dong,
    dv.ten_dich_vu,
    hd.ngay_lam_hop_dong,
    hd.ngay_ket_thuc,
    (dv.chi_phi_thue + IFNULL(hdct.so_lương * dvdk.gia, 0)) AS tong_tien
FROM
    khach_hang kh
        LEFT JOIN
    hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
        LEFT JOIN
    loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach
        LEFT JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY kh.ma_khach_hang;












