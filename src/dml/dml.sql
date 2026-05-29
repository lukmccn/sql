-- ==============
-- Users (10 baris)
-- ==============
INSERT INTO users (username, email, password, full_name, role) VALUES
('budi.s', 'budi@example.com', 'hash1', 'Budi Santoso', 'student'),
('siti.n', 'siti@example.com', 'hash2', 'Siti Nuraini', 'instructor'),
('admin1', 'admin@lms.id', 'hash3', 'Admin LMS', 'admin'),
('doni.p', 'doni@example.com', 'hash4', 'Doni Pratama', 'student'),
('rudi.h', 'rudi@example.com', 'hash5', 'Rudi Hartono', 'instructor'),
('anisa.r', 'anisa@example.com', 'hash6', 'Anisa Rahma', 'student'),
('bambang.s', 'bambang@example.com', 'hash7', 'Bambang Supriyadi', 'student'),
('citra.d', 'citra@example.com', 'hash8', 'Citra Dewi', 'student'),
('dewi.l', 'dewi@example.com', 'hash9', 'Dewi Lestari', 'instructor'),
('eko.p', 'eko@example.com', 'hash10', 'Eko Prabowo', 'student');

-- ==============
-- Course Categories (10 baris)
-- ==============
INSERT INTO course_categories (name) VALUES
('Pemrograman'),
('Desain'),
('Bisnis'),
('Bahasa'),
('Data Science'),
('Soft Skills'),
('Fotografi'),
('Musik'),
('Kesehatan'),
('Kuliner');

-- ==============
-- Courses (10 baris)
-- ==============
INSERT INTO courses (title, description, category_id, instructor_id, price, quota) VALUES
('Python Dasar', 'Belajar Python dari nol', 1, 2, 0, 100),
('React Modern', 'React Hooks & Context API', 1, 5, 150000, 50),
('Manajemen Proyek Agile', 'Scrum, Kanban', 3, 5, 250000, 30),
('Desain Grafis Canva', 'Desain mudah dengan Canva', 2, 2, 75000, 200),
('Bahasa Inggris Bisnis', 'Komunikasi profesional', 4, 2, 120000, 80),
('Data Science dengan R', 'Statistik dan visualisasi', 5, 9, 300000, 25),
('Machine Learning Dasar', 'Supervised & unsupervised', 5, 9, 600000, 20),
('UI/UX Design', 'Prinsip desain antarmuka', 2, 5, 180000, 40),
('SQL untuk Pemula', 'Query database relasional', 1, 9, 90000, 60),
('Public Speaking', 'Teknik presentasi efektif', 6, 2, 200000, 35);

-- ==============
-- Enrollments (10 baris)
-- ==============
INSERT INTO enrollments (user_id, course_id, enrolled_at, progress) VALUES
(1, 1, '2026-05-01 10:00:00', 60.00),
(1, 2, '2026-05-02 14:30:00', 25.00),
(1, 4, '2026-05-07 08:00:00', 5.00),
(4, 1, '2026-05-05 09:15:00', 0),
(4, 3, '2026-05-06 11:00:00', 10.00),
(6, 2, '2026-05-03 13:00:00', 80.00),
(6, 5, '2026-05-04 09:30:00', 15.00),
(7, 1, '2026-05-02 11:00:00', 72.00),
(8, 4, '2026-05-09 10:00:00', 33.00),
(10, 8, '2026-05-11 08:30:00', 50.00);

-- ==============
-- Instructor Profiles (3 baris, sesuai instructor yang ada)
-- ==============
INSERT INTO instructor (user_id, bio, expertise, phone) VALUES
(2, 'Instruktur pemrograman & desain', 'Python, React, Canva', '0811111111'),
(5, 'Praktisi manajemen proyek', 'Agile, React', '0811111112'),
(9, 'Data scientist dan peneliti AI', 'R, Python, ML', '0811111113');

-- ==============
-- Student Profiles (7 baris, sesuai student yang terdaftar)
-- ==============
INSERT INTO student (user_id, bio, phone, education_level) VALUES
(1, 'Mahasiswa Informatika semester 5', '0812222221', 'S1'),
(4, 'Pekerja IT profesional', '0812222222', 'SMA'),
(6, 'Fresh graduate', '0812222223', 'S1'),
(7, 'Mahasiswa tahun akhir', '0812222224', 'S1'),
(8, 'Desainer grafis lepas', '0812222225', 'D3'),
(10, 'Marketing executive', '0812222226', 'S1'),