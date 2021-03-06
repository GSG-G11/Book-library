BEGIN;
DROP TABLE IF EXISTS books CASCADE;
DROP TABLE IF EXISTS mybooks CASCADE;

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    publisher VARCHAR(255) NOT NULL,
     cover VARCHAR(255) NOT NULL,
    isbn VARCHAR(255) NOT NULL,
    year INT 
);


CREATE TABLE mybooks (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
     cover VARCHAR(255) NOT NULL,
  "book_id" int NOT NULL
);


ALTER TABLE "mybooks" ADD FOREIGN KEY ("book_id") REFERENCES "books" ("id");



COMMIT;