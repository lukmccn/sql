-- 1. Daftar course beserta nama kategorinya (INNER JOIN)
SELECT
    c.id,
    c.title,
    cat.name AS category_name
FROM courses c
INNER JOIN course_categories cat ON c.category_id = cat.id;

-- 2. Semua kategori meskipun belum memiliki course (LEFT JOIN)
SELECT
    cat.id,
    cat.name,
    c.title AS course_title
FROM course_categories cat
LEFT JOIN courses c ON cat.id = c.category_id
ORDER BY cat.name;

-- 3. Semua user meskipun belum pernah mengupload course (LEFT JOIN)
SELECT
    u.id,
    u.username,
    u.full_name,
    u.role,
    c.title AS uploaded_course
FROM users u
LEFT JOIN courses c ON u.id = c.instructor_id
ORDER BY u.full_name;

-- 4. Daftar course beserta nama instructor (INNER JOIN)
SELECT
    c.id,
    c.title,
    u.full_name AS instructor_name
FROM courses c
INNER JOIN users u ON c.instructor_id = u.id;

-- 5. Jumlah course yang dibuat oleh masing-masing instructor (LEFT JOIN + GROUP BY)
SELECT
    u.id,
    u.full_name AS instructor_name,
    COUNT(c.id) AS total_courses
FROM users u
LEFT JOIN courses c ON u.id = c.instructor_id
WHERE u.role = 'instructor'
GROUP BY u.id, u.full_name
ORDER BY total_courses DESC;