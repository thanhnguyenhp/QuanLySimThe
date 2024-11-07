

-- Sử dụng CSDL
USE QLST;
GO

-- Tạo bảng 'Mang'
CREATE TABLE Mang (
    ID INT PRIMARY KEY IDENTITY(1,1),
    TenMang NVARCHAR(50) NOT NULL
);

INSERT INTO Mang (TenMang)
VALUES 
('Viettel'),
('Mobifone'),
('Vinaphone');

-- Tạo bảng 'Sim'
CREATE TABLE Sim (
    ID INT PRIMARY KEY IDENTITY(1,1),
    SoSim NVARCHAR(20) NOT NULL,
    MangID INT,
    NgayKichHoat DATE,
    NgayHetHan DATE,
    FOREIGN KEY (MangID) REFERENCES Mang(ID)
);

INSERT INTO Sim (SoSim, MangID, NgayKichHoat, NgayHetHan)
VALUES 
('0987654321', 1, '2024-01-10', '2025-01-10'),
('0912345678', 2, '2023-12-15', '2024-12-15'),
('0978765432', 3, '2024-05-20', '2025-05-20');
GO
