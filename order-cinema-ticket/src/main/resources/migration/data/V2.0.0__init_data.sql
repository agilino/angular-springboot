insert into user
values ('b92948ca-8a35-4717-8058-7e250a49f0c1', 'testuser1', '123456'),
       ('b92948ca-8a35-4717-8058-7e250a49f0c2', 'testuser2', '123456'),
       ('b92948ca-8a35-4717-8058-7e250a49f0c3', 'testuser3', '123456'),
       ('b92948ca-8a35-4717-8058-7e250a49f0c4', 'testuser4', '123456'),
       ('b92948ca-8a35-4717-8058-7e250a49f0c5', 'testuser5', '123456');

insert into movie
values ('82088c12-012c-11ee-be56-0242ac120001', 'Nhà Bà Nữ (2023)', 'Nhà bà Nữ là bộ phim chiếu rạp Việt Nam do Trấn Thành sản xuất và đạo diễn, sau thành công của Bố già. Kể từ ngày công chiếu, bộ phim này đã có doanh thu lên đến 358 tỷ đồng và được đón nhận bởi đông đảo khán giả Việt'),
       ('82088c12-012c-11ee-be56-0242ac120002', 'Lật Mặt 6', 'Lật mặt 6 sẽ thuộc thể loại giật gân, tâm lý pha hành động, hài hước'),
       ('82088c12-012c-11ee-be56-0242ac120003', 'Người nhện: Du hành vũ trụ nhện', 'Miles Morales tái xuất trong phần tiếp theo của bom tấn hoạt hình từng đoạt giải Oscar - Spider-Man: Across the Spider-Verse.'),
       ('82088c12-012c-11ee-be56-0242ac120004', 'Bo Gia (2021)', 'Bo Gia: Directed by Tran Thanh, Ngoc Dang Vu ...'),
       ('82088c12-012c-11ee-be56-0242ac120005', 'Avatar: Dòng chảy của nước', 'Dòng chảy của nước hay còn gọi là Avatar 2, tức phần 2 của Avatar (2009)- một trong những bộ phim hay nhất mọi thời đại. Trong phim, gia đình Na’vi đứng trước mối đe dọa mới từ con người. ');

insert into department
values ('8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'Phòng 1'),
       ('8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'Phòng 2'),
       ('8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'Phòng 3'),
       ('8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'Phòng 4'),
       ('8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'Phòng 5');

insert into time
values ('68366484-012d-11ee-be56-0242ac120001', '2021-08-01 10:00:00', '2021-08-22 12:00:00', 80.000,
        '82088c12-012c-11ee-be56-0242ac120001', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1'),
       ('68366484-012d-11ee-be56-0242ac120001', '2021-08-01 14:00:00', '2021-08-22 16:00:00', 80.000,
        '82088c12-012c-11ee-be56-0242ac120001', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1'),
       ('68366484-012d-11ee-be56-0242ac120001', '2021-08-01 18:00:00', '2021-08-22 20:00:00', 80.000,
        '82088c12-012c-11ee-be56-0242ac120001', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1'),

       ('68366484-012d-11ee-be56-0242ac120002', '2021-08-01 10:00:00', '2021-08-22 12:00:00', 80.000,
        '82088c12-012c-11ee-be56-0242ac120002', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2'),
       ('68366484-012d-11ee-be56-0242ac120002', '2021-08-01 14:00:00', '2021-08-22 16:00:00', 80.000,
        '82088c12-012c-11ee-be56-0242ac120002', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2'),
       ('68366484-012d-11ee-be56-0242ac120002', '2021-08-01 18:00:00', '2021-08-22 20:00:00', 80.000,
        '82088c12-012c-11ee-be56-0242ac120002', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2'),

       ('68366484-012d-11ee-be56-0242ac120003', '2021-08-01 10:00:00', '2021-08-22 12:00:00', 80.000,
        '82088c12-012c-11ee-be56-0242ac120003', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3'),
       ('68366484-012d-11ee-be56-0242ac120003', '2021-08-01 14:00:00', '2021-08-22 16:00:00', 80.000,
        '82088c12-012c-11ee-be56-0242ac120003', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3'),
       ('68366484-012d-11ee-be56-0242ac120003', '2021-08-01 18:00:00', '2021-08-22 20:00:00', 80.000,
        '82088c12-012c-11ee-be56-0242ac120003', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3'),

       ('68366484-012d-11ee-be56-0242ac120004', '2021-08-01 10:00:00', '2021-08-22 12:00:00', 80.000,
        '82088c12-012c-11ee-be56-0242ac120004', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4'),
       ('68366484-012d-11ee-be56-0242ac120004', '2021-08-01 14:00:00', '2021-08-22 16:00:00', 80.000,
        '82088c12-012c-11ee-be56-0242ac120004', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4'),
       ('68366484-012d-11ee-be56-0242ac120004', '2021-08-01 18:00:00', '2021-08-22 20:00:00', 80.000,
        '82088c12-012c-11ee-be56-0242ac120004', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4'),

       ('68366484-012d-11ee-be56-0242ac120005', '2021-08-01 10:00:00', '2021-08-22 12:00:00', 80.000,
        '82088c12-012c-11ee-be56-0242ac120005', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5'),
       ('68366484-012d-11ee-be56-0242ac120005', '2021-08-01 14:00:00', '2021-08-22 16:00:00', 80.000,
        '82088c12-012c-11ee-be56-0242ac120005', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5'),
       ('68366484-012d-11ee-be56-0242ac120005', '2021-08-01 18:00:00', '2021-08-22 20:00:00', 80.000,
        '82088c12-012c-11ee-be56-0242ac120005', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5');

insert into chair
values ('facff368-020a-11ee-be56-0242ac120001', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'A1'),
       ('facff368-020a-11ee-be56-0242ac120002', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'A2'),
       ('facff368-020a-11ee-be56-0242ac120003', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'A3'),
       ('facff368-020a-11ee-be56-0242ac120004', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'A4'),
       ('facff368-020a-11ee-be56-0242ac120005', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'A5'),
       ('facff368-020a-11ee-be56-0242ac120006', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'A6'),
       ('facff368-020a-11ee-be56-0242ac120007', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'A7'),
       ('facff368-020a-11ee-be56-0242ac120008', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'A8'),
       ('facff368-020a-11ee-be56-0242ac120009', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'A9'),
       ('facff368-020a-11ee-be56-0242ac120010', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'A10'),
       ('facff368-020a-11ee-be56-0242ac120011', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'B1'),
       ('facff368-020a-11ee-be56-0242ac120012', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'B2'),
       ('facff368-020a-11ee-be56-0242ac120013', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'B3'),
       ('facff368-020a-11ee-be56-0242ac120014', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'B4'),
       ('facff368-020a-11ee-be56-0242ac120015', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'B5'),
       ('facff368-020a-11ee-be56-0242ac120016', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'B6'),
       ('facff368-020a-11ee-be56-0242ac120017', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'B7'),
       ('facff368-020a-11ee-be56-0242ac120018', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'B8'),
       ('facff368-020a-11ee-be56-0242ac120019', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'B9'),
       ('facff368-020a-11ee-be56-0242ac120020', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'B10'),
       ('facff368-020a-11ee-be56-0242ac120021', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'C1'),
       ('facff368-020a-11ee-be56-0242ac120022', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'C2'),
       ('facff368-020a-11ee-be56-0242ac120023', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'C3'),
       ('facff368-020a-11ee-be56-0242ac120024', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'C4'),
       ('facff368-020a-11ee-be56-0242ac120025', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'C5'),
       ('facff368-020a-11ee-be56-0242ac120026', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'C6'),
       ('facff368-020a-11ee-be56-0242ac120027', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'C7'),
       ('facff368-020a-11ee-be56-0242ac120028', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'C8'),
       ('facff368-020a-11ee-be56-0242ac120029', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'C9'),
       ('facff368-020a-11ee-be56-0242ac120030', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'C10'),
       ('facff368-020a-11ee-be56-0242ac120031', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'D1'),
       ('facff368-020a-11ee-be56-0242ac120032', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'D2'),
       ('facff368-020a-11ee-be56-0242ac120033', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'D3'),
       ('facff368-020a-11ee-be56-0242ac120034', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'D4'),
       ('facff368-020a-11ee-be56-0242ac120035', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'D5'),
       ('facff368-020a-11ee-be56-0242ac120036', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'D6'),
       ('facff368-020a-11ee-be56-0242ac120037', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'D7'),
       ('facff368-020a-11ee-be56-0242ac120038', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'D8'),
       ('facff368-020a-11ee-be56-0242ac120039', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'D9'),
       ('facff368-020a-11ee-be56-0242ac120040', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'D10'),
       ('facff368-020a-11ee-be56-0242ac120041', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'E1'),
       ('facff368-020a-11ee-be56-0242ac120042', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'E2'),
       ('facff368-020a-11ee-be56-0242ac120043', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'E3'),
       ('facff368-020a-11ee-be56-0242ac120044', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'E4'),
       ('facff368-020a-11ee-be56-0242ac120045', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'E5'),
       ('facff368-020a-11ee-be56-0242ac120046', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'E6'),
       ('facff368-020a-11ee-be56-0242ac120047', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'E7'),
       ('facff368-020a-11ee-be56-0242ac120048', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'E8'),
       ('facff368-020a-11ee-be56-0242ac120049', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'E9'),
       ('facff368-020a-11ee-be56-0242ac120050', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'E10'),
       ('facff368-020a-11ee-be56-0242ac120051', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'F1'),
       ('facff368-020a-11ee-be56-0242ac120052', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'F2'),
       ('facff368-020a-11ee-be56-0242ac120053', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'F3'),
       ('facff368-020a-11ee-be56-0242ac120054', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'F4'),
       ('facff368-020a-11ee-be56-0242ac120055', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'F5'),
       ('facff368-020a-11ee-be56-0242ac120056', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'F6'),
       ('facff368-020a-11ee-be56-0242ac120057', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'F7'),
       ('facff368-020a-11ee-be56-0242ac120058', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'F8'),
       ('facff368-020a-11ee-be56-0242ac120059', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'F9'),
       ('facff368-020a-11ee-be56-0242ac120060', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c1', 'F10'),
       ('facff368-020a-11ee-be56-0242ac120061', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'A1'),
       ('facff368-020a-11ee-be56-0242ac120062', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'A2'),
       ('facff368-020a-11ee-be56-0242ac120063', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'A3'),
       ('facff368-020a-11ee-be56-0242ac120064', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'A4'),
       ('facff368-020a-11ee-be56-0242ac120065', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'A5'),
       ('facff368-020a-11ee-be56-0242ac120066', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'A6'),
       ('facff368-020a-11ee-be56-0242ac120067', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'A7'),
       ('facff368-020a-11ee-be56-0242ac120068', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'A8'),
       ('facff368-020a-11ee-be56-0242ac120069', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'A9'),
       ('facff368-020a-11ee-be56-0242ac120070', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'A10'),
       ('facff368-020a-11ee-be56-0242ac120071', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'B1'),
       ('facff368-020a-11ee-be56-0242ac120072', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'B2'),
       ('facff368-020a-11ee-be56-0242ac120073', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'B3'),
       ('facff368-020a-11ee-be56-0242ac120074', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'B4'),
       ('facff368-020a-11ee-be56-0242ac120075', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'B5'),
       ('facff368-020a-11ee-be56-0242ac120076', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'B6'),
       ('facff368-020a-11ee-be56-0242ac120077', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'B7'),
       ('facff368-020a-11ee-be56-0242ac120078', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'B8'),
       ('facff368-020a-11ee-be56-0242ac120079', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'B9'),
       ('facff368-020a-11ee-be56-0242ac120080', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'B10'),
       ('facff368-020a-11ee-be56-0242ac120081', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'C1'),
       ('facff368-020a-11ee-be56-0242ac120082', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'C2'),
       ('facff368-020a-11ee-be56-0242ac120083', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'C3'),
       ('facff368-020a-11ee-be56-0242ac120084', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'C4'),
       ('facff368-020a-11ee-be56-0242ac120085', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'C5'),
       ('facff368-020a-11ee-be56-0242ac120086', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'C6'),
       ('facff368-020a-11ee-be56-0242ac120087', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'C7'),
       ('facff368-020a-11ee-be56-0242ac120088', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'C8'),
       ('facff368-020a-11ee-be56-0242ac120089', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'C9'),
       ('facff368-020a-11ee-be56-0242ac120090', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'C10'),
       ('facff368-020a-11ee-be56-0242ac120091', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'D1'),
       ('facff368-020a-11ee-be56-0242ac120092', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'D2'),
       ('facff368-020a-11ee-be56-0242ac120093', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'D3'),
       ('facff368-020a-11ee-be56-0242ac120094', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'D4'),
       ('facff368-020a-11ee-be56-0242ac120095', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'D5'),
       ('facff368-020a-11ee-be56-0242ac120096', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'D6'),
       ('facff368-020a-11ee-be56-0242ac120097', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'D7'),
       ('facff368-020a-11ee-be56-0242ac120098', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'D8'),
       ('facff368-020a-11ee-be56-0242ac120099', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'D9'),
       ('facff368-020a-11ee-be56-0242ac120100', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'D10'),
       ('facff368-020a-11ee-be56-0242ac120101', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'E1'),
       ('facff368-020a-11ee-be56-0242ac120102', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'E2'),
       ('facff368-020a-11ee-be56-0242ac120103', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'E3'),
       ('facff368-020a-11ee-be56-0242ac120104', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'E4'),
       ('facff368-020a-11ee-be56-0242ac120105', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'E5'),
       ('facff368-020a-11ee-be56-0242ac120106', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'E6'),
       ('facff368-020a-11ee-be56-0242ac120107', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'E7'),
       ('facff368-020a-11ee-be56-0242ac120108', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'E8'),
       ('facff368-020a-11ee-be56-0242ac120109', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'E9'),
       ('facff368-020a-11ee-be56-0242ac120110', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'E10'),
       ('facff368-020a-11ee-be56-0242ac120111', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'F1'),
       ('facff368-020a-11ee-be56-0242ac120112', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'F2'),
       ('facff368-020a-11ee-be56-0242ac120113', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'F3'),
       ('facff368-020a-11ee-be56-0242ac120114', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'F4'),
       ('facff368-020a-11ee-be56-0242ac120115', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'F5'),
       ('facff368-020a-11ee-be56-0242ac120116', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'F6'),
       ('facff368-020a-11ee-be56-0242ac120117', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'F7'),
       ('facff368-020a-11ee-be56-0242ac120118', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'F8'),
       ('facff368-020a-11ee-be56-0242ac120119', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'F9'),
       ('facff368-020a-11ee-be56-0242ac120120', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c2', 'F10'),
       ('facff368-020a-11ee-be56-0242ac120121', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'A1'),
       ('facff368-020a-11ee-be56-0242ac120122', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'A2'),
       ('facff368-020a-11ee-be56-0242ac120123', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'A3'),
       ('facff368-020a-11ee-be56-0242ac120124', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'A4'),
       ('facff368-020a-11ee-be56-0242ac120125', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'A5'),
       ('facff368-020a-11ee-be56-0242ac120126', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'A6'),
       ('facff368-020a-11ee-be56-0242ac120127', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'A7'),
       ('facff368-020a-11ee-be56-0242ac120128', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'A8'),
       ('facff368-020a-11ee-be56-0242ac120129', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'A9'),
       ('facff368-020a-11ee-be56-0242ac120130', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'A10'),
       ('facff368-020a-11ee-be56-0242ac120131', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'B1'),
       ('facff368-020a-11ee-be56-0242ac120132', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'B2'),
       ('facff368-020a-11ee-be56-0242ac120133', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'B3'),
       ('facff368-020a-11ee-be56-0242ac120134', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'B4'),
       ('facff368-020a-11ee-be56-0242ac120135', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'B5'),
       ('facff368-020a-11ee-be56-0242ac120136', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'B6'),
       ('facff368-020a-11ee-be56-0242ac120137', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'B7'),
       ('facff368-020a-11ee-be56-0242ac120138', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'B8'),
       ('facff368-020a-11ee-be56-0242ac120139', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'B9'),
       ('facff368-020a-11ee-be56-0242ac120140', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'B10'),
       ('facff368-020a-11ee-be56-0242ac120141', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'C1'),
       ('facff368-020a-11ee-be56-0242ac120142', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'C2'),
       ('facff368-020a-11ee-be56-0242ac120143', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'C3'),
       ('facff368-020a-11ee-be56-0242ac120144', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'C4'),
       ('facff368-020a-11ee-be56-0242ac120145', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'C5'),
       ('facff368-020a-11ee-be56-0242ac120146', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'C6'),
       ('facff368-020a-11ee-be56-0242ac120147', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'C7'),
       ('facff368-020a-11ee-be56-0242ac120148', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'C8'),
       ('facff368-020a-11ee-be56-0242ac120149', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'C9'),
       ('facff368-020a-11ee-be56-0242ac120150', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'C10'),
       ('facff368-020a-11ee-be56-0242ac120151', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'D1'),
       ('facff368-020a-11ee-be56-0242ac120152', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'D2'),
       ('facff368-020a-11ee-be56-0242ac120153', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'D3'),
       ('facff368-020a-11ee-be56-0242ac120154', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'D4'),
       ('facff368-020a-11ee-be56-0242ac120155', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'D5'),
       ('facff368-020a-11ee-be56-0242ac120156', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'D6'),
       ('facff368-020a-11ee-be56-0242ac120157', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'D7'),
       ('facff368-020a-11ee-be56-0242ac120158', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'D8'),
       ('facff368-020a-11ee-be56-0242ac120159', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'D9'),
       ('facff368-020a-11ee-be56-0242ac120160', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'D10'),
       ('facff368-020a-11ee-be56-0242ac120161', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'E1'),
       ('facff368-020a-11ee-be56-0242ac120162', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'E2'),
       ('facff368-020a-11ee-be56-0242ac120163', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'E3'),
       ('facff368-020a-11ee-be56-0242ac120164', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'E4'),
       ('facff368-020a-11ee-be56-0242ac120165', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'E5'),
       ('facff368-020a-11ee-be56-0242ac120166', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'E6'),
       ('facff368-020a-11ee-be56-0242ac120167', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'E7'),
       ('facff368-020a-11ee-be56-0242ac120168', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'E8'),
       ('facff368-020a-11ee-be56-0242ac120169', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'E9'),
       ('facff368-020a-11ee-be56-0242ac120170', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'E10'),
       ('facff368-020a-11ee-be56-0242ac120171', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'F1'),
       ('facff368-020a-11ee-be56-0242ac120172', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'F2'),
       ('facff368-020a-11ee-be56-0242ac120173', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'F3'),
       ('facff368-020a-11ee-be56-0242ac120174', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'F4'),
       ('facff368-020a-11ee-be56-0242ac120175', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'F5'),
       ('facff368-020a-11ee-be56-0242ac120176', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'F6'),
       ('facff368-020a-11ee-be56-0242ac120177', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'F7'),
       ('facff368-020a-11ee-be56-0242ac120178', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'F8'),
       ('facff368-020a-11ee-be56-0242ac120179', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'F9'),
       ('facff368-020a-11ee-be56-0242ac120180', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c3', 'F10'),
       ('facff368-020a-11ee-be56-0242ac120181', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'A1'),
       ('facff368-020a-11ee-be56-0242ac120182', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'A2'),
       ('facff368-020a-11ee-be56-0242ac120183', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'A3'),
       ('facff368-020a-11ee-be56-0242ac120184', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'A4'),
       ('facff368-020a-11ee-be56-0242ac120185', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'A5'),
       ('facff368-020a-11ee-be56-0242ac120186', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'A6'),
       ('facff368-020a-11ee-be56-0242ac120187', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'A7'),
       ('facff368-020a-11ee-be56-0242ac120188', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'A8'),
       ('facff368-020a-11ee-be56-0242ac120189', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'A9'),
       ('facff368-020a-11ee-be56-0242ac120190', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'A10'),
       ('facff368-020a-11ee-be56-0242ac120191', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'B1'),
       ('facff368-020a-11ee-be56-0242ac120192', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'B2'),
       ('facff368-020a-11ee-be56-0242ac120193', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'B3'),
       ('facff368-020a-11ee-be56-0242ac120194', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'B4'),
       ('facff368-020a-11ee-be56-0242ac120195', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'B5'),
       ('facff368-020a-11ee-be56-0242ac120196', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'B6'),
       ('facff368-020a-11ee-be56-0242ac120197', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'B7'),
       ('facff368-020a-11ee-be56-0242ac120198', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'B8'),
       ('facff368-020a-11ee-be56-0242ac120199', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'B9'),
       ('facff368-020a-11ee-be56-0242ac120200', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'B10'),
       ('facff368-020a-11ee-be56-0242ac120201', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'C1'),
       ('facff368-020a-11ee-be56-0242ac120202', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'C2'),
       ('facff368-020a-11ee-be56-0242ac120203', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'C3'),
       ('facff368-020a-11ee-be56-0242ac120204', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'C4'),
       ('facff368-020a-11ee-be56-0242ac120205', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'C5'),
       ('facff368-020a-11ee-be56-0242ac120206', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'C6'),
       ('facff368-020a-11ee-be56-0242ac120207', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'C7'),
       ('facff368-020a-11ee-be56-0242ac120208', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'C8'),
       ('facff368-020a-11ee-be56-0242ac120209', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'C9'),
       ('facff368-020a-11ee-be56-0242ac120210', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'C10'),
       ('facff368-020a-11ee-be56-0242ac120211', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'D1'),
       ('facff368-020a-11ee-be56-0242ac120212', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'D2'),
       ('facff368-020a-11ee-be56-0242ac120213', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'D3'),
       ('facff368-020a-11ee-be56-0242ac120214', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'D4'),
       ('facff368-020a-11ee-be56-0242ac120215', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'D5'),
       ('facff368-020a-11ee-be56-0242ac120216', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'D6'),
       ('facff368-020a-11ee-be56-0242ac120217', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'D7'),
       ('facff368-020a-11ee-be56-0242ac120218', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'D8'),
       ('facff368-020a-11ee-be56-0242ac120219', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'D9'),
       ('facff368-020a-11ee-be56-0242ac120220', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'D10'),
       ('facff368-020a-11ee-be56-0242ac120221', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'E1'),
       ('facff368-020a-11ee-be56-0242ac120222', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'E2'),
       ('facff368-020a-11ee-be56-0242ac120223', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'E3'),
       ('facff368-020a-11ee-be56-0242ac120224', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'E4'),
       ('facff368-020a-11ee-be56-0242ac120225', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'E5'),
       ('facff368-020a-11ee-be56-0242ac120226', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'E6'),
       ('facff368-020a-11ee-be56-0242ac120227', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'E7'),
       ('facff368-020a-11ee-be56-0242ac120228', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'E8'),
       ('facff368-020a-11ee-be56-0242ac120229', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'E9'),
       ('facff368-020a-11ee-be56-0242ac120230', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'E10'),
       ('facff368-020a-11ee-be56-0242ac120231', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'F1'),
       ('facff368-020a-11ee-be56-0242ac120232', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'F2'),
       ('facff368-020a-11ee-be56-0242ac120233', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'F3'),
       ('facff368-020a-11ee-be56-0242ac120234', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'F4'),
       ('facff368-020a-11ee-be56-0242ac120235', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'F5'),
       ('facff368-020a-11ee-be56-0242ac120236', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'F6'),
       ('facff368-020a-11ee-be56-0242ac120237', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'F7'),
       ('facff368-020a-11ee-be56-0242ac120238', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'F8'),
       ('facff368-020a-11ee-be56-0242ac120239', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'F9'),
       ('facff368-020a-11ee-be56-0242ac120240', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c4', 'F10'),
       ('facff368-020a-11ee-be56-0242ac120241', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'A1'),
       ('facff368-020a-11ee-be56-0242ac120242', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'A2'),
       ('facff368-020a-11ee-be56-0242ac120243', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'A3'),
       ('facff368-020a-11ee-be56-0242ac120244', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'A4'),
       ('facff368-020a-11ee-be56-0242ac120245', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'A5'),
       ('facff368-020a-11ee-be56-0242ac120246', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'A6'),
       ('facff368-020a-11ee-be56-0242ac120247', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'A7'),
       ('facff368-020a-11ee-be56-0242ac120248', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'A8'),
       ('facff368-020a-11ee-be56-0242ac120249', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'A9'),
       ('facff368-020a-11ee-be56-0242ac120250', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'A10'),
       ('facff368-020a-11ee-be56-0242ac120251', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'B1'),
       ('facff368-020a-11ee-be56-0242ac120252', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'B2'),
       ('facff368-020a-11ee-be56-0242ac120253', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'B3'),
       ('facff368-020a-11ee-be56-0242ac120254', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'B4'),
       ('facff368-020a-11ee-be56-0242ac120255', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'B5'),
       ('facff368-020a-11ee-be56-0242ac120256', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'B6'),
       ('facff368-020a-11ee-be56-0242ac120257', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'B7'),
       ('facff368-020a-11ee-be56-0242ac120258', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'B8'),
       ('facff368-020a-11ee-be56-0242ac120259', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'B9'),
       ('facff368-020a-11ee-be56-0242ac120260', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'B10'),
       ('facff368-020a-11ee-be56-0242ac120261', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'C1'),
       ('facff368-020a-11ee-be56-0242ac120262', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'C2'),
       ('facff368-020a-11ee-be56-0242ac120263', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'C3'),
       ('facff368-020a-11ee-be56-0242ac120264', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'C4'),
       ('facff368-020a-11ee-be56-0242ac120265', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'C5'),
       ('facff368-020a-11ee-be56-0242ac120266', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'C6'),
       ('facff368-020a-11ee-be56-0242ac120267', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'C7'),
       ('facff368-020a-11ee-be56-0242ac120268', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'C8'),
       ('facff368-020a-11ee-be56-0242ac120269', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'C9'),
       ('facff368-020a-11ee-be56-0242ac120270', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'C10'),
       ('facff368-020a-11ee-be56-0242ac120271', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'D1'),
       ('facff368-020a-11ee-be56-0242ac120272', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'D2'),
       ('facff368-020a-11ee-be56-0242ac120273', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'D3'),
       ('facff368-020a-11ee-be56-0242ac120274', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'D4'),
       ('facff368-020a-11ee-be56-0242ac120275', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'D5'),
       ('facff368-020a-11ee-be56-0242ac120276', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'D6'),
       ('facff368-020a-11ee-be56-0242ac120277', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'D7'),
       ('facff368-020a-11ee-be56-0242ac120278', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'D8'),
       ('facff368-020a-11ee-be56-0242ac120279', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'D9'),
       ('facff368-020a-11ee-be56-0242ac120280', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'D10'),
       ('facff368-020a-11ee-be56-0242ac120281', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'E1'),
       ('facff368-020a-11ee-be56-0242ac120282', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'E2'),
       ('facff368-020a-11ee-be56-0242ac120283', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'E3'),
       ('facff368-020a-11ee-be56-0242ac120284', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'E4'),
       ('facff368-020a-11ee-be56-0242ac120285', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'E5'),
       ('facff368-020a-11ee-be56-0242ac120286', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'E6'),
       ('facff368-020a-11ee-be56-0242ac120287', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'E7'),
       ('facff368-020a-11ee-be56-0242ac120288', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'E8'),
       ('facff368-020a-11ee-be56-0242ac120289', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'E9'),
       ('facff368-020a-11ee-be56-0242ac120290', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'E10'),
       ('facff368-020a-11ee-be56-0242ac120291', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'F1'),
       ('facff368-020a-11ee-be56-0242ac120292', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'F2'),
       ('facff368-020a-11ee-be56-0242ac120293', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'F3'),
       ('facff368-020a-11ee-be56-0242ac120294', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'F4'),
       ('facff368-020a-11ee-be56-0242ac120295', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'F5'),
       ('facff368-020a-11ee-be56-0242ac120296', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'F6'),
       ('facff368-020a-11ee-be56-0242ac120297', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'F7'),
       ('facff368-020a-11ee-be56-0242ac120298', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'F8'),
       ('facff368-020a-11ee-be56-0242ac120299', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'F9'),
       ('facff368-020a-11ee-be56-0242ac120300', '8ee37fc1-a1a4-45fe-a83f-f374f099a2c5', 'F10');





