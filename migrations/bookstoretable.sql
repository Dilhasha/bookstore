-- Create Books table (MySQL)
CREATE TABLE IF NOT EXISTS books (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(255) NOT NULL,
  edition INT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Composite index for faster lookups
CREATE INDEX idx_books_title_author ON books (title, author);

-- Seed data
INSERT INTO books (title, author, edition, price) VALUES
  ('The Great Gatsby', 'F. Scott Fitzgerald', 1, 12.99),
  ('To Kill a Mockingbird', 'Harper Lee', 1, 14.99),
  ('1984', 'George Orwell', 1, 13.99),
  ('Pride and Prejudice', 'Jane Austen', 1, 11.99),
  ('The Catcher in the Rye', 'J.D. Salinger', 1, 15.99),
  ('Lord of the Flies', 'William Golding', 1, 12.99),
  ('The Hobbit', 'J.R.R. Tolkien', 1, 16.99),
  ('Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 1, 18.99),
  ('The Chronicles of Narnia', 'C.S. Lewis', 1, 17.99),
  ('The Da Vinci Code', 'Dan Brown', 1, 14.99),
  ('The Great Gatsby', 'F. Scott Fitzgerald', 2, 13.99),
  ('1984', 'George Orwell', 2, 14.99),
  ('Pride and Prejudice', 'Jane Austen', 2, 12.99),
  ('The Hobbit', 'J.R.R. Tolkien', 2, 17.99),
  ('Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 2, 19.99);

