DROP DATABASE IF EXISTS ERD;
CREATE DATABASE ERD;
USE ERD;

CREATE TABLE phieu_xuat (
    so_px INT AUTO_INCREMENT PRIMARY KEY,
    Ngay_Xuat DATE
);

CREATE TABLE phieu_nhap (
    so_pn INT AUTO_INCREMENT PRIMARY KEY,
    Ngay_Nhap DATE
);

CREATE TABLE vat_tu (
    ma_vt INT PRIMARY KEY,
    ten_vt VARCHAR(50) NOT NULL
);

CREATE TABLE chi_tiet_phieu_xuat (
    so_px INT,
    ma_vt INT,
    PRIMARY KEY (so_px , ma_vt),
    DG_xuat DOUBLE,
    SL_xuat INT,
    FOREIGN KEY (so_px)
        REFERENCES phieu_xuat (so_px),
    FOREIGN KEY (ma_vt)
        REFERENCES vat_tu (ma_vt)
);

CREATE TABLE chi_tiet_phieu_nhap (
    so_pn INT,
    ma_vt INT,
    PRIMARY KEY (so_pn , ma_vt),
    DG_nhap DOUBLE,
    SL_nhap INT,
    FOREIGN KEY (so_pn)
        REFERENCES phieu_nhap (so_pn),
    FOREIGN KEY (ma_vt)
        REFERENCES vat_tu (ma_vt)
);


CREATE TABLE sdt_ncc (
    id_sdt INT PRIMARY KEY AUTO_INCREMENT,
    sdt VARCHAR(11)
);

CREATE TABLE nha_cc (
    ma_ncc INT PRIMARY KEY,
    ten_ncc VARCHAR(45) NOT NULL,
    dia_chi VARCHAR(45) NOT NULL,
    id_sdt INT,
    FOREIGN KEY (id_sdt)
        REFERENCES sdt_ncc (id_sdt)
);

CREATE TABLE dat_hang (
    so_dh INT PRIMARY KEY AUTO_INCREMENT,
    ngay_dh DATE,
    ma_ncc INT,
    FOREIGN KEY (ma_ncc)
        REFERENCES nha_cc (ma_ncc)
);

CREATE TABLE chi_tiet_don_dh (
    ma_vt INT,
    so_dh INT,
    PRIMARY KEY (ma_vt , so_dh),
    FOREIGN KEY (ma_vt)
        REFERENCES vat_tu (ma_vt),
    FOREIGN KEY (so_dh)
        REFERENCES dat_hang (so_dh)
);
