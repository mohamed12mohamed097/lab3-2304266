# Lab 3: Foreign Keys and Simple SQL

**Student:** Mohamed hassan teama (ID: 2304266)

## Requirements
- MySQL Server 8+ and the MySQL client
- Python 3.10+

## Problem 1 (COMPANY database)

Run from this folder:

    mysql -u root -p < problem1_DDL.sql
    mysql -u root -p < problem1_DML.sql

Answers to Q1.1 to Q1.3 are in `problem1_Answers.txt`.

## Problem 2 (Library database and website)

1. Create the database and the seed data:

       mysql -u root -p < problem2_DDL.sql
       mysql -u root -p < problem2_DML.sql

2. Create the environment:

       cd website
       python -m venv venv
       venv\Scripts\activate
       pip install -r requirements.txt

3. Copy `.env.example` to `.env` and fill in `DB_HOST`, `DB_USER`, `DB_PASSWORD` and `SECRET_KEY`.

4. Start the server:

       python app.py

5. Open http://127.0.0.1:5000/library

## Library features
- F2.1 Show the books table (with author_id) and the authors table
- F2.2 Add a book and add an author
- F2.3 Edit a book and edit an author
- F2.4 Remove a book
- F2.5 Remove an author (their books are deleted too, `ON DELETE CASCADE`)
- Bonus: upload a cover image for books and a photo for authors (files in `website/static/uploads/`, file name in the `image` column)

A book with an `author_id` that does not exist is rejected by the foreign key, and the page shows a message.

## Lab 2 website (login and to-do list)

It is in the same `website` folder (`/login`, `/register`, `/todos`). It uses the `registration` database: run `website/database/schema.sql` first.