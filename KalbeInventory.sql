CREATE DATABASE kalbe;

CREATE TABLE inventory (
	item_code INT PRIMARY KEY,
    item_name VARCHAR(100),
    item_price FLOAT,
    item_total INT(50)
);

INSERT INTO 
	inventory (item_code, item_name, item_price, item_total)
VALUES
	('2341', 'Promag Tablet', '3000', '100'),
    ('2342', 'Hydro Coco 250ML', '7000', '20'),
    ('2343', 'Nutrive Benecol 100ML', '20000', '30'),
    ('2344', 'Blackmores Vit C 500Mg', '95000', '45'),
    ('2345', 'Entrasol Gold 370G', '90000', '120');

SELECT item_name 
FROM inventory
WHERE item_total = (SELECT MAX(item_total) FROM inventory);
    
UPDATE inventory SET item_price = '77500'
WHERE item_total = (SELECT MAX(item_total) FROM inventory);
    
DELETE FROM inventory WHERE item_total = (SELECT MIN(item_total) FROM inventory);