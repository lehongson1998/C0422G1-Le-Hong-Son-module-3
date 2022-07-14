DROP DATABASE IF EXISTS QuanLyBanHang;
CREATE DATABASE QuanLyBanHang;
USE QuanLyBanHang;

CREATE TABLE Customer (
    cId INT AUTO_INCREMENT PRIMARY KEY,
    cName VARCHAR(45) NOT NULL,
    age INT NOT NULL,
    CHECK (age >= 18)
);

CREATE TABLE `Order` (
    oId INT AUTO_INCREMENT PRIMARY KEY,
    cId INT,
    oDate DATE NOT NULL,
    oTotalprice DOUBLE,
    FOREIGN KEY (cId)
        REFERENCES Customer (cId)
);

CREATE TABLE Product (
    pId INT AUTO_INCREMENT PRIMARY KEY,
    pName VARCHAR(45) NOT NULL,
    pPrice DOUBLE
);

CREATE TABLE OrderDetail (
    oId INT,
    pId INT,
    odQTY VARCHAR(50),
    FOREIGN KEY (oId)
        REFERENCES `order` (oId),
    FOREIGN KEY (pId)
        REFERENCES product (pId)
);