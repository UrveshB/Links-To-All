-- Create categories table
CREATE TABLE IF NOT EXISTS categories (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

-- Create links table
CREATE TABLE IF NOT EXISTS links (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    url VARCHAR(1000) NOT NULL,
    category_id BIGINT,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);
