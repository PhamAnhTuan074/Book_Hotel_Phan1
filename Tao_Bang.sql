USE BOOK_HOTEL;
-- --- XÓA BẢNG NẾU TỒN TẠI (THEO THỨ TỰ NGƯỢC) ---
DROP TABLE IF EXISTS ChiTietHoaDon;
DROP TABLE IF EXISTS HoaDon;
DROP TABLE IF EXISTS SuDungDichVu;
DROP TABLE IF EXISTS ChiTietDatPhong;
DROP TABLE IF EXISTS NguoiDiCung;
DROP TABLE IF EXISTS DatPhong;
DROP TABLE IF EXISTS Phong;
DROP TABLE IF EXISTS KhachHang;
DROP TABLE IF EXISTS NhanVien;
DROP TABLE IF EXISTS DichVu;
DROP TABLE IF EXISTS LoaiPhong;


-- --- TẠO CÁC BẢNG CỐT LÕI (KHÔNG PHỤ THUỘC) ---

CREATE TABLE LoaiPhong (
    MaLoaiPhong VARCHAR(10) PRIMARY KEY,
    TenLoaiPhong NVARCHAR(100) NOT NULL,
    DonGiaHienTai DECIMAL(10, 2) NOT NULL,
    SucChua INT DEFAULT 2,
    MoTa NVARCHAR(255),
    CONSTRAINT CHK_GiaLoaiPhong CHECK (DonGiaHienTai > 0)
);

CREATE TABLE DichVu (
    MaDichVu VARCHAR(10) PRIMARY KEY,
    TenDichVu NVARCHAR(100) NOT NULL UNIQUE,
    DonGia DECIMAL(10, 2) NOT NULL,
    MoTa NVARCHAR(255),
    CONSTRAINT CHK_GiaDichVu CHECK (DonGia > 0)
);

CREATE TABLE NhanVien (
    MaNhanVien VARCHAR(10) PRIMARY KEY,
    HoTen NVARCHAR(100) NOT NULL,
    ChucVu NVARCHAR(50),
    SoDienThoai VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE KhachHang (
    MaKhachHang VARCHAR(10) PRIMARY KEY,
    HoTen NVARCHAR(100) NOT NULL,
    CCCD VARCHAR(12) NOT NULL UNIQUE,
    SoDienThoai VARCHAR(15) NOT NULL UNIQUE,
    Email VARCHAR(100) UNIQUE,
    DiaChi NVARCHAR(255),
    GioiTinh NVARCHAR(10)
);

-- --- TẠO CÁC BẢNG NGHIỆP VỤ (CÓ PHỤ THUỘC) ---

CREATE TABLE Phong (
    MaPhong VARCHAR(10) PRIMARY KEY,
    SoPhong VARCHAR(10) NOT NULL UNIQUE,
    Tang INT,
    TrangThai NVARCHAR(50) NOT NULL DEFAULT N'Trống',
    MaLoaiPhong VARCHAR(10) NOT NULL,
    MaNvQuanLy VARCHAR(10),
    FOREIGN KEY (MaLoaiPhong) REFERENCES LoaiPhong(MaLoaiPhong),
    FOREIGN KEY (MaNvQuanLy) REFERENCES NhanVien(MaNhanVien)
);

CREATE TABLE DatPhong (
    MaDatPhong VARCHAR(10) PRIMARY KEY,
    MaKhachHang VARCHAR(10) NOT NULL,
    MaNhanVienXuLy VARCHAR(10) NOT NULL,
    NgayDat DATETIME DEFAULT GETDATE(),
    NgayNhanPhong DATETIME NOT NULL,
    NgayTraPhong DATETIME NOT NULL,
    TrangThaiDatPhong NVARCHAR(50) DEFAULT N'Đã xác nhận',
    TienDatCoc DECIMAL(10, 2) DEFAULT 0,
    FOREIGN KEY (MaKhachHang) REFERENCES KhachHang(MaKhachHang),
    FOREIGN KEY (MaNhanVienXuLy) REFERENCES NhanVien(MaNhanVien),
    CONSTRAINT CHK_NgayDatPhong CHECK (NgayNhanPhong < NgayTraPhong)
);

CREATE TABLE ChiTietDatPhong (
    MaDatPhong VARCHAR(10) NOT NULL,
    MaPhong VARCHAR(10) NOT NULL,
    DonGiaLucDat DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (MaDatPhong, MaPhong),
    FOREIGN KEY (MaDatPhong) REFERENCES DatPhong(MaDatPhong) ON DELETE CASCADE,
    FOREIGN KEY (MaPhong) REFERENCES Phong(MaPhong),
    CONSTRAINT CHK_DonGiaLucDat CHECK (DonGiaLucDat > 0)
);

CREATE TABLE NguoiDiCung (
    MaNguoiDiCung VARCHAR(10) PRIMARY KEY,
    MaDatPhong VARCHAR(10) NOT NULL,
    HoTen NVARCHAR(100) NOT NULL,
    CCCD VARCHAR(12),
    GioiTinh NVARCHAR(10),
    NamSinh INT,
    MoiQuanHe NVARCHAR(50),
    FOREIGN KEY (MaDatPhong) REFERENCES DatPhong(MaDatPhong) ON DELETE CASCADE
);

CREATE TABLE SuDungDichVu (
    MaDatPhong VARCHAR(10) NOT NULL,
    MaDichVu VARCHAR(10) NOT NULL,
    NgaySuDung DATETIME NOT NULL,
    SoLuong INT NOT NULL,
    PRIMARY KEY (MaDatPhong, MaDichVu, NgaySuDung),
    FOREIGN KEY (MaDatPhong) REFERENCES DatPhong(MaDatPhong) ON DELETE CASCADE,
    FOREIGN KEY (MaDichVu) REFERENCES DichVu(MaDichVu),
    CONSTRAINT CHK_SoLuongDichVu CHECK (SoLuong > 0)
);

-- --- TẠO HÓA ĐƠN VÀ THỰC THỂ YẾU CHI TIẾT HÓA ĐƠN ---

-- Bảng 10: HoaDon (Thực thể chủ - KHÔNG còn TongTien)
CREATE TABLE HoaDon (
    MaHoaDon VARCHAR(10) PRIMARY KEY,
    MaDatPhong VARCHAR(10) NOT NULL UNIQUE,
    MaNhanVienLap VARCHAR(10) NOT NULL,
    NgayLapHoaDon DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (MaDatPhong) REFERENCES DatPhong(MaDatPhong),
    FOREIGN KEY (MaNhanVienLap) REFERENCES NhanVien(MaNhanVien)
);

-- Bảng 11: ChiTietHoaDon (Thực thể yếu)
CREATE TABLE ChiTietHoaDon (
    MaHoaDon VARCHAR(10) NOT NULL,     -- Khóa ngoại từ thực thể chủ
    SoThuTu INT NOT NULL,           -- Khóa phân biệt (Discriminator)
    NoiDung NVARCHAR(255) NOT NULL,
    SoLuong INT NOT NULL DEFAULT 1,
    DonGia DECIMAL(10, 2) NOT NULL,
    
    PRIMARY KEY (MaHoaDon, SoThuTu), -- Khóa chính tổng hợp
    
    FOREIGN KEY (MaHoaDon) REFERENCES HoaDon(MaHoaDon) ON DELETE CASCADE,
    
    CONSTRAINT CHK_SoLuongChiTiet CHECK (SoLuong > 0),
    CONSTRAINT CHK_DonGiaChiTiet CHECK (DonGia >= 0)
);