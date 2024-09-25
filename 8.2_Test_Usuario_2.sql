use tp_mlbenjamin;

-- pruebo la lectura
select * from producto;

-- pruebo el update
UPDATE producto SET precio = 950 WHERE id_producto = 2;

-- pruebo el insert
insert into producto values(20 ,'camisa', 'camisa rayada bordeu', 10, 'camisa.jpg', 150, 7, 7);

