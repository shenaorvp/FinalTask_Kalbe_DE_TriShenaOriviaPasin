CREATE DATABASE kalbe1;

CREATE TABLE customer_orders (
	order_no INT PRIMARY KEY,
    purchase_amount INT,
    order_date DATE,
    customer_id INT,
    salesman_id INT
);

INSERT INTO
	customer_orders (order_no, purchase_amount, order_date, customer_id, salesman_id)
VALUES
	('10001', '150', '2022-10-05', '2005', '3002'),
    ('10009', '270', '2022-09-10', '2001', '3005'),
    ('10002', '65', '2022-10-05', '2002', '3001'),
    ('10004', '110', '2022-08-17', '2009', '3003'),
    ('10007', '948', '2022-09-10', '2005', '3002'),
    ('10005', '2400', '2022-07-27', '2007', '3001');
    
-- Buat Kueri untuk menampilkan semua pesanan pelanggan dengan jumlah pembelian 
-- kurang dari 100 atau mengecualikan pesanan dengan tanggal pesanan pada atau 
-- lebih besar dari 25 Agustus 2022 dan id pelanggan di atas 2001.

SELECT * FROM customer_orders;

SELECT * FROM 
	customer_orders 
WHERE 
	purchase_amount < 100 
AND 
    order_date > 2022-08-25 
AND customer_id > 2001;