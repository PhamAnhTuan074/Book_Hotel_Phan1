

-- 1. LoaiPhong (7 dòng)
INSERT INTO LoaiPhong (MaLoaiPhong, TenLoaiPhong, DonGiaHienTai, SucChua, MoTa)
VALUES
('LP001', N'Standard', 500000, 2, N'Phòng tiêu chuẩn, 1 giường đôi'),
('LP002', N'Deluxe', 800000, 2, N'Phòng cao cấp, view đẹp'),
('LP003', N'Family Suite', 1500000, 4, N'Phòng gia đình, 2 phòng ngủ'),
('LP004', N'Connecting Room', 1200000, 4, N'2 phòng thông nhau'),
('LP005', N'Presidential Suite', 10000000, 2, N'Phòng Tổng thống, cao cấp nhất'),
('LP006', N'Standard Twin', 550000, 2, N'Phòng tiêu chuẩn, 2 giường đơn'),
('LP007', N'Bungalow', 2500000, 2, N'Phòng riêng biệt, view biển');

-- 2. DichVu (7 dòng)
INSERT INTO DichVu (MaDichVu, TenDichVu, DonGia, MoTa)
VALUES
('DV001', N'Giặt ủi', 50000, N'Tính theo kg'),
('DV002', N'Ăn tại phòng', 150000, N'Tính theo lần phục vụ'),
('DV003', N'Đón sân bay', 300000, N'Xe 4 chỗ'),
('DV004', N'Mini Bar - Nước ngọt', 30000, N'Tính theo lon'),
('DV005', N'Dịch vụ Spa', 500000, N'Vé 60 phút'),
('DV006', N'Thuê xe máy', 150000, N'Tính theo ngày'),
('DV007', N'Mini Bar - Bia', 45000, N'Tính theo lon');

-- 3. NhanVien (7 dòng)
INSERT INTO NhanVien (MaNhanVien, HoTen, ChucVu, SoDienThoai)
VALUES
('NV001', N'Lê Văn Tâm', N'Lễ tân', '090111222'),
('NV002', N'Phạm Thị An', N'Quản lý', '090333444'),
('NV003', N'Trần Hữu Dũng', N'Buồng phòng', '090555666'),
('NV004', N'Võ Thị Mai', N'Lễ tân (Ca tối)', '090777888'),
('NV005', N'Hoàng Anh Tuấn', N'Bảo vệ', '090999000'),
('NV006', N'Nguyễn Thu Trang', N'Kế toán', '091222333'),
('NV007', N'Đặng Văn Hùng', N'Bếp trưởng', '091444555');

-- 4. KhachHang (7 dòng)
INSERT INTO KhachHang (MaKhachHang, HoTen, CCCD, SoDienThoai, Email, DiaChi, GioiTinh)
VALUES
('KH001', N'Nguyễn Văn An', '001122334455', '0912345678', 'vana@email.com', N'123 ABC, TPHCM', N'Nam'),
('KH002', N'Trần Thị Ba', '001555666777', '0987654321', 'thib@email.com', N'456 XYZ, Hà Nội', N'Nữ'),
('KH003', N'Lê Minh Tuyết', '001888999000', '0922223333', 'minhc@email.com', N'789 DEF, Đà Nẵng', N'Nam'),
('KH004', N'Phạm Hoài Đức', '001333444555', '0933334444', 'hoaid@email.com', N'101 GHI, Cần Thơ', N'Nữ'),
('KH005', N'Vũ Đức Trọng', '001666777888', '0944445555', 'duce@email.com', N'202 JKL, Hải Phòng', N'Nam'),
('KH006', N'Bùi Thu Hằng', '001999000111', '0955556666', 'thuhang@email.com', N'303 MNO, Nha Trang', N'Nữ'),
('KH007', N'Đỗ Hùng Dũng', '001000111222', '0966667777', 'hungdung@email.com', N'404 PQR, Vũng Tàu', N'Nam');

-- 5. Phong (12 dòng)
INSERT INTO Phong (MaPhong, SoPhong, Tang, TrangThai, MaLoaiPhong, MaNvQuanLy)
VALUES
('P101', '101', 1, N'Trống', 'LP001', 'NV003'),
('P102', '102', 1, N'Trống', 'LP001', 'NV003'),
('P103', '103', 1, N'Trống', 'LP006', 'NV003'),
('P104', '104', 1, N'Trống', 'LP006', 'NV003'),
('P201', '201', 2, N'Trống', 'LP002', 'NV003'),
('P202', '202', 2, N'Đang sửa', 'LP002', 'NV003'),
('P301', '301', 3, N'Trống', 'LP003', 'NV003'),
('P401', '401', 4, N'Trống', 'LP004', 'NV003'),
('P402', '402', 4, N'Trống', 'LP004', 'NV003'),
('P501', '501', 5, N'Trống', 'LP005', 'NV003'),
('B001', 'B01', 0, N'Trống', 'LP007', 'NV003'),
('B002', 'B02', 0, N'Trống', 'LP007', 'NV003');

-- 6. DatPhong (8 dòng)
INSERT INTO DatPhong (MaDatPhong, MaKhachHang, MaNhanVienXuLy, NgayDat, NgayNhanPhong, NgayTraPhong, TienDatCoc)
VALUES
('DP001', 'KH001', 'NV001', '2025-11-10 09:30:00', '2025-11-20 14:00:00', '2025-11-22 12:00:00', 500000), -- 2 đêm
('DP002', 'KH002', 'NV001', '2025-11-12 11:00:00', '2025-11-25 14:00:00', '2025-11-28 12:00:00', 1000000), -- 3 đêm
('DP003', 'KH003', 'NV004', '2025-11-13 15:00:00', '2025-11-26 14:00:00', '2025-11-27 12:00:00', 400000), -- 1 đêm
('DP004', 'KH004', 'NV001', '2025-11-14 10:00:00', '2025-12-01 14:00:00', '2025-12-05 12:00:00', 1000000), -- 4 đêm (2 phòng)
('DP005', 'KH001', 'NV004', '2025-11-15 17:00:00', '2025-12-10 14:00:00', '2025-12-12 12:00:00', 5000000), -- 2 đêm (KH001 đặt lần 2)
('DP006', 'KH005', 'NV001', '2025-11-16 08:00:00', '2025-12-15 14:00:00', '2025-12-20 12:00:00', 2000000), -- 5 đêm
('DP007', 'KH007', 'NV004', '2025-11-16 10:00:00', '2025-12-22 14:00:00', '2025-12-25 12:00:00', 1000000), -- 3 đêm
('DP008', 'KH002', 'NV001', '2025-11-16 11:00:00', '2026-01-05 14:00:00', '2026-01-10 12:00:00', 1500000); -- 5 đêm (KH002 đặt lần 2)


-- 7. ChiTietDatPhong (9 dòng)
INSERT INTO ChiTietDatPhong (MaDatPhong, MaPhong, DonGiaLucDat)
VALUES
('DP001', 'P101', 500000),    -- DP001 đặt 1 phòng Standard
('DP002', 'P301', 1500000),   -- DP002 đặt 1 phòng Family Suite
('DP003', 'P201', 800000),    -- DP003 đặt 1 phòng Deluxe
('DP004', 'P401', 1200000),   -- DP004 đặt 2 phòng Connecting
('DP004', 'P402', 1200000),   -- DP004 đặt 2 phòng Connecting
('DP005', 'P501', 10000000),  -- DP005 đặt 1 phòng Presidential
('DP006', 'B001', 2500000),   -- DP006 đặt 1 Bungalow
('DP007', 'P103', 550000),    -- DP007 đặt 1 Standard Twin
('DP008', 'P201', 800000);    -- DP008 đặt 1 Deluxe

-- 8. NguoiDiCung (7 dòng)
INSERT INTO NguoiDiCung (MaNguoiDiCung, MaDatPhong, HoTen, CCCD, GioiTinh, NamSinh, MoiQuanHe)
VALUES
('NDC001', 'DP002', N'Hoàng Văn C', '001888999111', N'Nam', 1985, N'Chồng'), -- Đi cùng DP002
('NDC002', 'DP002', N'Hoàng Thị D', NULL, N'Nữ', 2018, N'Con'),            -- Đi cùng DP002 (Trẻ em)
('NDC003', 'DP004', N'Lý Văn F', '001222333444', N'Nam', 1990, N'Chồng'),    -- Đi cùng DP004
('NDC004', 'DP004', N'Lý Thị G', '001333444555', N'Nữ', 2015, N'Con'),      -- Đi cùng DP004
('NDC005', 'DP004', N'Lý Thị H', NULL, N'Nữ', 2020, N'Con'),            -- Đi cùng DP004 (Trẻ em)
('NDC006', 'DP006', N'Trần Anh Khoa', '001555666888', N'Nam', 1992, N'Bạn'),    -- Đi cùng DP006
('NDC007', 'DP007', N'Đỗ Minh Quân', NULL, N'Nam', 2019, N'Con');           -- Đi cùng DP007

-- 9. SuDungDichVu (10 dòng)
INSERT INTO SuDungDichVu (MaDatPhong, MaDichVu, NgaySuDung, SoLuong)
VALUES
('DP001', 'DV001', '2025-11-21 08:00:00', 2), -- DP001 dùng Giặt ủi 2kg
('DP001', 'DV002', '2025-11-21 19:00:00', 1), -- DP001 dùng Ăn tại phòng 1 lần
('DP002', 'DV004', '2025-11-26 10:00:00', 5), -- DP002 dùng Mini Bar 5 lon
('DP002', 'DV007', '2025-11-27 20:00:00', 2), -- DP002 dùng Mini Bar 2 bia
('DP003', 'DV005', '2025-11-26 16:00:00', 1), -- DP003 dùng Spa 1 vé
('DP005', 'DV003', '2025-12-10 14:30:00', 1), -- DP005 dùng Đón sân bay 1 lần
('DP006', 'DV006', '2025-12-16 09:00:00', 2), -- DP006 thuê xe máy 2 ngày
('DP006', 'DV005', '2025-12-17 18:00:00', 2), -- DP006 dùng Spa 2 vé
('DP007', 'DV001', '2025-12-23 08:00:00', 3), -- DP007 dùng Giặt ủi 3kg
('DP008', 'DV002', '2026-01-06 12:00:00', 1); -- DP008 dùng Ăn tại phòng

-- 10. HoaDon (8 dòng)
INSERT INTO HoaDon (MaHoaDon, MaDatPhong, MaNhanVienLap, NgayLapHoaDon)
VALUES
('HD001', 'DP001', 'NV001', '2025-11-22 12:05:00'),
('HD002', 'DP002', 'NV001', '2025-11-28 12:02:00'),
('HD003', 'DP003', 'NV004', '2025-11-27 12:01:00'),
('HD004', 'DP004', 'NV001', '2025-12-05 12:03:00'),
('HD005', 'DP005', 'NV004', '2025-12-12 12:04:00'),
('HD006', 'DP006', 'NV001', '2025-12-20 12:01:00'),
('HD007', 'DP007', 'NV004', '2025-12-25 12:02:00'),
('HD008', 'DP008', 'NV001', '2026-01-10 12:03:00');

-- 11. ChiTietHoaDon (19 dòng)
-- Chi tiết cho HD001 (DP001)
INSERT INTO ChiTietHoaDon (MaHoaDon, SoThuTu, NoiDung, SoLuong, DonGia)
VALUES
('HD001', 1, N'Tiền phòng Standard (2 đêm)', 1, 1000000), -- (2 đêm * 500k)
('HD001', 2, N'Dịch vụ Giặt ủi', 2, 50000),           -- (2kg * 50k)
('HD001', 3, N'Dịch vụ Ăn tại phòng', 1, 150000);       -- (1 lần * 150k)
-- Chi tiết cho HD002 (DP002)
INSERT INTO ChiTietHoaDon (MaHoaDon, SoThuTu, NoiDung, SoLuong, DonGia)
VALUES
('HD002', 1, N'Tiền phòng Family Suite (3 đêm)', 1, 4500000), -- (3 đêm * 1500k)
('HD002', 2, N'Mini Bar - Nước ngọt', 5, 30000),            -- (5 lon * 30k)
('HD002', 3, N'Mini Bar - Bia', 2, 45000);                  -- (2 lon * 45k)
-- Chi tiết cho HD003 (DP003)
INSERT INTO ChiTietHoaDon (MaHoaDon, SoThuTu, NoiDung, SoLuong, DonGia)
VALUES
('HD003', 1, N'Tiền phòng Deluxe (1 đêm)', 1, 800000),  -- (1 đêm * 800k)
('HD003', 2, N'Dịch vụ Spa', 1, 500000);            -- (1 vé * 500k)
-- Chi tiết cho HD004 (DP004)
INSERT INTO ChiTietHoaDon (MaHoaDon, SoThuTu, NoiDung, SoLuong, DonGia)
VALUES
('HD004', 1, N'Tiền phòng Connecting P401 (4 đêm)', 1, 4800000), -- (4 đêm * 1200k)
('HD004', 2, N'Tiền phòng Connecting P402 (4 đêm)', 1, 4800000); -- (4 đêm * 1200k)
-- Chi tiết cho HD005 (DP005)
INSERT INTO ChiTietHoaDon (MaHoaDon, SoThuTu, NoiDung, SoLuong, DonGia)
VALUES
('HD005', 1, N'Tiền phòng Presidential (2 đêm)', 1, 20000000), -- (2 đêm * 10tr)
('HD005', 2, N'Dịch vụ Đón sân bay', 1, 300000);            -- (1 lần * 300k)
-- Chi tiết cho HD006 (DP006)
INSERT INTO ChiTietHoaDon (MaHoaDon, SoThuTu, NoiDung, SoLuong, DonGia)
VALUES
('HD006', 1, N'Tiền phòng Bungalow (5 đêm)', 1, 12500000), -- (5 đêm * 2.5tr)
('HD006', 2, N'Thuê xe máy', 2, 150000),
('HD006', 3, N'Dịch vụ Spa', 2, 500000);
-- Chi tiết cho HD007 (DP007)
INSERT INTO ChiTietHoaDon (MaHoaDon, SoThuTu, NoiDung, SoLuong, DonGia)
VALUES
('HD007', 1, N'Tiền phòng Standard Twin (3 đêm)', 1, 1650000), -- (3 đêm * 550k)
('HD007', 2, N'Dịch vụ Giặt ủi', 3, 50000);
-- Chi tiết cho HD008 (DP008)
INSERT INTO ChiTietHoaDon (MaHoaDon, SoThuTu, NoiDung, SoLuong, DonGia)
VALUES
('HD008', 1, N'Tiền phòng Deluxe (5 đêm)', 1, 4000000), -- (5 đêm * 800k)
('HD008', 2, N'Dịch vụ Ăn tại phòng', 1, 150000);