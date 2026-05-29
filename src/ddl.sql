-- ============================================
-- Tabel: users
-- ============================================
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50)  NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    role ENUM('student','instructor','admin') NOT NULL DEFAULT 'student'
);

-- ============================================
-- Tabel: course_categories
-- ============================================
CREATE TABLE course_categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- ============================================
-- Tabel: courses
-- ============================================
CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    category_id INT NOT NULL,
    instructor_id INT NOT NULL,
    price DECIMAL(10,2) NOT NULL DEFAULT 0,
    quota INT NOT NULL DEFAULT 0,
    FOREIGN KEY (category_id) REFERENCES course_categories(id),
    FOREIGN KEY (instructor_id) REFERENCES users(id)
);

-- ============================================
-- Tabel: enrollments
-- ============================================
CREATE TABLE enrollments (
    user_id INT NOT NULL,
    course_id INT NOT NULL,
    enrolled_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    completed_at TIMESTAMP NULL,
    progress DECIMAL(5,2) DEFAULT 0,
    PRIMARY KEY (user_id, course_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

-- ============================================
-- Tabel: instructor
-- ============================================
CREATE TABLE instructor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL UNIQUE,
    bio TEXT,
    expertise VARCHAR(255),
    phone VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- ============================================
-- Tabel: student
-- ============================================
CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL UNIQUE,
    bio TEXT,
    phone VARCHAR(20),
    education_level VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- ============================================
-- Indeks tambahan
-- ============================================
CREATE INDEX idx_courses_category_id ON courses(category_id);
CREATE INDEX idx_courses_instructor_id ON courses(instructor_id);
CREATE INDEX idx_enrollments_course_id ON enrollments(course_id);
