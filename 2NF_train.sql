SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- Table booked.

CREATE TABLE booked (
  id int NOT NULL,
  schedule_id int NOT NULL,
  payment_id int NOT NULL,
  user_id int NOT NULL,
  code varchar(100) NOT NULL,
  class varchar(10) NOT NULL DEFAULT 'second',
  no int NOT NULL DEFAULT '1',
  seat varchar(30) NOT NULL,
  date varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- data insertion in booked table.

INSERT INTO booked (id, schedule_id, payment_id, user_id, code, class, no, seat, date) VALUES
(15, 5, 12, 4, '2022/005/1324', 'first', 1, 'F01', 'Tue, 11-Aug-2020 11:52:19 AM'),
(17, 5, 15, 3, '2022/005/2645', 'first', 5, 'F02', 'Tue, 11-Aug-2020 12:48:38 PM'),
(18, 6, 16, 3, '2022/006/1655', 'first', 8, 'F001 -F008', 'Tue, 11-Aug-2020 01:08:20 PM'),
(19, 6, 1, 4, '2022/006/9146', 'second', 1, 'S0001', 'Tue, 11-Aug-2020 01:09:22 PM'),
(20, 8, 18, 4, '2022/008/1144', 'second', 8, 'S0001 -S0008', 'Tue, 11-Aug-2020 01:12:58 PM'),
(21, 18, 19, 1, '2022/018/1671', 'first', 8, 'F01 -F08', 'Tue, 11-Aug-2020 04:10:29 PM'),
(22, 20, 20, 5, '2022/020/126', 'first', 30, 'F01 - F30', 'Mon, 31-Aug-2020 11:36:57 PM'),
(23, 20, 21, 6, '2022/020/31816', 'first', 2, 'F31 - F32', 'Fri, 06-Nov-2020 10:10:44 PM'),
(24, 22, 22, 6, '2022/022/1176', 'second', 1, 'S001', 'Sun, 08-Nov-2020 02:08:07 PM'),
(25, 24, 23, 2, '2022/024/197', 'second', 2, 'S001 - S002', 'Sun, 15-Nov-2020 02:25:27 PM'),
(26, 26, 24, 8, '2022/026/1183', 'first', 4, 'F01 - F04', 'Fri, 17-Sep-2021 04:25:09 PM'),
(27, 98, 25, 7, '2022/098/198', 'first', 2, 'F001 - F002', 'Wed, 13-Oct-2021 05:17:54 AM'),
(28, 99, 26, 7, '2022/099/157', 'second', 1, 'S001', 'Wed, 13-Oct-2021 05:28:54 AM'),
(29, 100, 27, 7, '2022/0100/1134', 'second', 1, 'S001', 'Wed, 13-Oct-2021 05:39:18 AM'),
(30, 101, 39, 7, '2022/0101/1116', 'second', 1, 'S001', 'Wed, 13-Oct-2021 06:15:30 AM'),
(31, 102, 40, 7, '2022/0102/1502', 'first', 1, 'F001', 'Wed, 13-Oct-2021 06:18:10 AM'),
(32, 103, 43, 7, '2022/0103/1792', 'second', 2, 'S001 - S002', 'Wed, 13-Oct-2021 11:02:56 AM'),
(33, 103, 44, 8, '2021/0103/3809', 'second', 1, 'S003', 'Wed, 13-Oct-2021 02:21:40 PM'),
(34, 104, 45, 8, '2022/0104/1526', 'first', 2, 'F001 - F002', 'Wed, 13-Oct-2021 05:22:15 PM');

-- --------------------------------------------------------


-- Table passenger

CREATE TABLE passenger (
  id int NOT NULL,
  name varchar(100) NOT NULL,
  email varchar(70) NOT NULL,
  password varchar(40) NOT NULL,
  phone varchar(11) NOT NULL,
  address varchar(200) NOT NULL,
  loc varchar(40) NOT NULL,
  status int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data insertion in passenger table.

INSERT INTO passenger (id, name, email, password, phone, address, loc, status) VALUES
(1, 'Rahul Banerjee', 'rahul12@gmail.com', '1f87051e29a6927b2e6651dfb9b66387', '0780100000', 'A_class Delhi', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(2, 'Narendra Shah', 'narendra@gmail.com', '1526755d438e395e551f229a484f8a1d', '3000002000', 'Humara Ahemdabad', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(3, 'Amit Modi', 'amodi@gmail.com', 'c3a19571f1271af5f27a9582377b7d4a', '1400000020', 'Sabka Surat', 'f3fc8566140434f0a3f47303c62d5146.jpg', 0),
(4, 'Arvind Yadav', 'arya@gmail.com', '1dd76b458af8df200a097c5b061df9b1', '9000001000', 'Lucknow UP', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(5, 'Mulayam Kejriwal', 'mymkel@gmail.com', 'd780455a563c7c5dbfb74a51785ad949', '0000010020', 'Patna Bihar', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(6, 'Kumar Sanu', 'kumar12@gmail.com', 'abe1bcf64eb68c39847b962e8caadadf', '0000002000', 'Mumbai MH', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(7, 'Arijith Singh', 'arijtsing@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '7000000000', 'Kolkata', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(8, 'Virat Kohli', 'kohlivirat@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '7800000000', 'Delhi', '404a6378027a553d980b99162a5b4ce8.png', 1);

-- --------------------------------------------------------

-- Table payment

CREATE TABLE payment (
  id int NOT NULL,
  passenger_id int NOT NULL,
  schedule_id int NOT NULL,
  amount varchar(50) NOT NULL,
  ref varchar(100) NOT NULL,
  date varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insertion of data for table payment

INSERT INTO payment (id, passenger_id, schedule_id, amount, ref, date) VALUES
(12, 4, 5, '520', 'oyki20masb', 'Tue, 11-Aug-2020 11:52:19 AM'),
(14, 4, 6, '23', 'oyki20masb', 'Tue, 11-Aug-2020 11:52:19 AM'),
(15, 3, 5, '1860', '5gtnjnzclw', 'Tue, 11-Aug-2020 12:48:38 PM'),
(16, 3, 6, '680', 'dzwl1488r0', 'Tue, 11-Aug-2020 01:08:20 PM'),
(18, 4, 8, '8080', 'hja9zvtmgk', 'Tue, 11-Aug-2020 01:12:58 PM'),
(19, 1, 18, '1080', '3TVSHVBQII', 'Tue, 11-Aug-2020 04:10:29 PM'),
(20, 5, 20, '120', '84JP4U5LKZ', 'Mon, 31-Aug-2020 11:36:57 PM'),
(21, 6, 20, '8080', 'VXIZSCHMOG', 'Fri, 06-Nov-2020 10:10:44 PM'),
(22, 6, 22, '1410', 'TDHRBZTZOH', 'Sun, 08-Nov-2020 02:08:07 PM'),
(23, 2, 24, '5050', '4TRM9FIFEV', 'Sun, 15-Nov-2020 02:25:27 PM'),
(24, 8, 26, '5260', '1QXPYSUTOI', 'Fri, 17-Sep-2021 04:25:09 PM'),
(25, 7, 98, '303', 'FIPJBLU5LC', 'Wed, 13-Oct-2021 05:17:54 AM'),
(26, 7, 99, '80', 'NKMGVH44QG', 'Wed, 13-Oct-2021 05:28:54 AM'),
(27, 7, 100, '51', 'NS5IEEK1HS', 'Wed, 13-Oct-2021 05:39:18 AM'),
(39, 7, 101, '56', 'OEPPIM6X9H', 'Wed, 13-Oct-2021 06:15:30 AM'),
(40, 7, 102, '107', 'M07FP4QTOV', 'Wed, 13-Oct-2021 06:18:10 AM'),
(43, 7, 103, '152', 'RITK5E5GDM', 'Wed, 13-Oct-2021 11:02:56 AM'),
(44, 8, 103, '76', 'H6CMTHBJUU', 'Wed, 13-Oct-2021 02:21:40 PM'),
(45, 8, 104, '324', 'KH70GOC8KO', 'Wed, 13-Oct-2021 05:22:15 PM');

-- --------------------------------------------------------


-- Table schedule

CREATE TABLE schedule (
  id int NOT NULL,
  train_id int NOT NULL,
  route_id int NOT NULL,
  date varchar(30) NOT NULL,
  time varchar(10) NOT NULL,
  first_fee float NOT NULL,
  second_fee float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- data insertion in schedule

INSERT INTO schedule (id, train_id, route_id, date, time, first_fee, second_fee,train_name,first_seat,second_seat,start,stop) VALUES
(5, 7, 7, '11-12-2022', '18:30', 180, 80,'Rajdhani Express', 400, 1000, 'Nagpur', 'Ambala'),
(6, 11, 6, '11-12-2022', '18:30', 200, 85,'Duronto Express', 200, 500, 'Nagpur', 'Banglore'),
(7, 11, 5, '12-12-2022', '18:30', 130, 45,'Duronto Express', 200, 500, 'Nagpur', 'Delhi'),
(8, 11, 4, '13-11-2022', '18:30', 130, 60,'Duronto Express', 200, 500, 'Bhopal', 'Indore'),
(9, 11, 3, '14-10-2022', '18:30', 100, 40,'Duronto Express', 200, 500, 'Nagpur', 'Bhopal'),
(10, 7, 5, '15-12-2022', '18:30', 160, 100,'Rajdhani Express', 400, 1000, 'Nagpur', 'Delhi'),
(11, 9, 7, '16-10-2022', '18:30', 180, 100, 'Humsafar Express', 400, 850, 'Nagpur', 'Ambala'),
(12, 10, 5, '17-11-2022', '18:30', 310, 150, 'Jan Shatabdi Express', 500, 1200, 'Nagpur', 'Delhi'),
(16, 2, 7, '16-11-2022', '11:00', 265, 180, 'Narmada Express', 20, 900, 'Nagpur', 'Ambala'),
(17, 9, 3, '23-12-2022', '11:00', 180, 115, 'Humsafar Express', 400, 850, 'Nagpur', 'Bhopal'),
(18, 10, 4, '30-08-2022', '11:00', 180, 100, 'Jan Shatabdi Express', 500, 1200, 'Bhopal', 'Indore'),
(20, 8, 4, '07-11-2022', '22:24', 165, 100, 'Shatabdi Express', 395, 780, 'Bhopal', 'Indore'),
(22, 8, 3, '08-11-2022', '15:13', 130, 70, 'Shatabdi Express', 395, 780, 'Nagpur', 'Bhopal'),
(23, 3, 3, '07-11-2022', '15:10', 100, 85, 'Vande Bharte', 10, 600, 'Nagpur', 'Bhopal'),
(24, 2, 3, '15-11-2022', '15:22', 130, 95, 'Narmada Express', 20, 900, 'Nagpur', 'Bhopal'),
(25, 1, 3, '11-12-2022', '05:37', 65, 55, 'Garib Rath Express', 30, 800, 'Nagpur', 'Bhopal'),
(26, 2, 3, '18-12-2022', '09:00', 130, 90, 'Narmada Express', 20, 900, 'Nagpur', 'Bhopal'),
(97, 11, 8, '11-12-2022', '11:05', 185, 90,'Duronto Express', 200, 500, 'Delhi', 'Amritsar'),
(98, 10, 14, '12-12-2022', '09:00', 150, 85, 'Jan Shatabdi Express', 500, 1200, 'Bhopal', 'Guwhati'),
(99, 8, 11, '12-11-2022', '11:10', 166, 79, 'Shatabdi Express', 395, 780, 'Jaipur', 'Mumbai'),
(100, 9, 12, '12-11-2022', '12:20', 100, 50, 'Humsafar Express', 400, 850, 'Mumbai', 'Nagpur'),
(101, 2, 10, '12-01-2023', '22:59', 105, 55, 'Narmada Express', 20, 900, 'Lucknow', 'Kanpur'),
(102, 7, 4, '12-01-2023', '11:02', 105, 65,'Rajdhani Express', 400, 1000, 'Bhopal', 'Indore'),
(103, 9, 11, '12-01-2023', '04:45', 120, 75, 'Humsafar Express', 400, 850, 'Jaipur', 'Mumbai'),
(104, 12, 15, '14-01-2023', '10:00', 160, 72, 'Sampark kranti Express', 250, 600, 'Nagpur', 'Chennai');

-- --------------------------------------------------------



-- table users

CREATE TABLE users (
  id int NOT NULL,
  email varchar(40) NOT NULL,
  password varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- insertion of data for table users

INSERT INTO users (id, email, password) VALUES
(1, 'admin@admin.com', 'D00F5D5217896FB7FD601412CB890830');


ALTER TABLE booked
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY schedule_id (schedule_id, user_id, payment_id),
  

ALTER TABLE passenger
  ADD PRIMARY KEY (id);


ALTER TABLE payment
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY passenger_id (passenger_id, schedule_id),
  


ALTER TABLE schedule
  ADD PRIMARY KEY (id),


ALTER TABLE users
  ADD PRIMARY KEY (id);


ALTER TABLE booked
  MODIFY id int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;


ALTER TABLE passenger
  MODIFY id int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;


ALTER TABLE payment
  MODIFY id int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;



ALTER TABLE schedule
  MODIFY id int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;



ALTER TABLE users
  MODIFY id int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE booked
  ADD CONSTRAINT booked_ibfk_1 FOREIGN KEY (schedule_id) REFERENCES schedule (id),
  ADD CONSTRAINT booked_ibfk_2 FOREIGN KEY (user_id) REFERENCES passenger (id);


ALTER TABLE payment
  ADD CONSTRAINT payment_ibfk_1 FOREIGN KEY (passenger_id) REFERENCES passenger (id),
  ADD CONSTRAINT payment_ibfk_2 FOREIGN KEY (schedule_id) REFERENCES schedule (id);



