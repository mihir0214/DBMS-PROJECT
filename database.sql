CREATE TABLE users (
    id TEXT PRIMARY KEY,
    email TEXT UNIQUE,
    password_hash TEXT,
    name TEXT,
    role TEXT,
    dob TEXT
);

CREATE TABLE books (
    id TEXT PRIMARY KEY,
    isbn TEXT UNIQUE,
    title TEXT,
    author TEXT,
    year TEXT,
    genre TEXT,
    description TEXT,
    total_copies INTEGER,
    rating REAL,
    cover_url TEXT
);

CREATE TABLE rentals (
    id TEXT PRIMARY KEY,
    user_id TEXT,
    book_id TEXT,
    rented_at TEXT,
    due_date TEXT,
    returned_at TEXT,
    extended INTEGER DEFAULT 0,
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(book_id) REFERENCES books(id)
);
