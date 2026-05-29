-- 1. Hitung total user yang terdaftar
SELECT COUNT(*) AS total_users FROM users;

-- 2. Hitung total course yang tersedia
SELECT COUNT(*) AS total_courses FROM courses;

-- 3. Hitung jumlah course per kategori
SELECT 
    cat.name AS kategori,
    COUNT(c.id) AS jumlah_course
FROM course_categories cat
LEFT JOIN courses c ON cat.id = c.category_id
GROUP BY cat.id, cat.name
ORDER BY jumlah_course DESC;

-- 4. Hitung rata-rata harga course per kategori
SELECT 
    cat.name AS kategori,
    IFNULL(ROUND(AVG(c.price), 2), 0) AS rata_rata_harga
FROM course_categories cat
LEFT JOIN courses c ON cat.id = c.category_id
GROUP BY cat.id, cat.name
ORDER BY rata_rata_harga DESC;

-- 5. Tampilkan kategori yang memiliki lebih dari 3 course
SELECT 
    cat.name AS kategori,
    COUNT(c.id) AS jumlah_course
FROM course_categories cat
INNER JOIN courses c ON cat.id = c.category_id
GROUP BY cat.id, cat.name
HAVING COUNT(c.id) > 3;