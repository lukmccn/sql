-- 1. Tampilkan seluruh data course
SELECT * FROM courses;

-- 2. Tampilkan nama course dan harga saja
SELECT title, price FROM courses;

-- 3. Tampilkan course dengan harga antara 50.000 sampai 200.000
SELECT * FROM courses
WHERE price BETWEEN 50000 AND 200000;

-- 4. Tampilkan course yang memiliki kuota 0 ATAU harga di atas 500.000
SELECT * FROM courses
WHERE quota = 0 OR price > 500000;