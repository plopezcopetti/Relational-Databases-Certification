# freeCodeCamp – Relational Databases Certification

This repository contains projects completed as part of the **freeCodeCamp Relational Databases Certification**.  
Each project focuses on applying PostgreSQL and SQL concepts, including relational modeling, constraints, and data integrity.

## Table of Contents

- [Practice Projects](#practice-projects)
- [Certification Projects](#certification-projects)
- [Technologies Used](#technologies-used)
- [Certification](#certification)

---

## Practice Projects

### 1. Building a Student Database P1

A PostgreSQL relational database that models a university academic system, including students, majors, and courses.  
This project demonstrates structured schema design, normalization principles, sequence handling, and automated data population using Bash scripting.

#### Database Structure

- **students**: Stores student records with first name, last name, associated major, and GPA  
- **majors**: Stores academic majors  
- **courses**: Stores available courses  
- **majors_courses**: Junction table implementing the many-to-many relationship between majors and courses  

#### Key Concepts Demonstrated

- One-to-many relationship (majors → students)  
- Many-to-many relationship (majors ↔ courses via junction table)  
- Primary and foreign key constraints  
- Explicit sequence creation and ownership  
- Default values using `nextval()`  
- Handling NULL values for undeclared majors  
- Schema normalization and referential integrity  

#### Data Automation

The project includes a Bash script (`insert_data.sh`) that:

- Connects to PostgreSQL using `psql`
- Reads data from CSV files
- Checks for existing records before inserting
- Dynamically retrieves foreign keys
- Populates relational tables programmatically

This demonstrates integration between SQL and shell scripting for automated database population.

### 2. Build a Kitty Ipsum Translator

A Bash-based text processing project that transforms themed “Kitty Ipsum” content into a modified output using Unix command-line tools.  
This project demonstrates pattern matching with regular expressions, stream editing with `sed`, text filtering with `grep`, file comparison using `diff`, and basic shell scripting for automated text transformation.

#### Structure

- `kitty_ipsum_1.txt` / `kitty_ipsum_2.txt` – Original source text files  
- `doggy_ipsum_1.txt` / `doggy_ipsum_2.txt` – Transformed output files  
- `translate.sh` – Bash script that processes input files and applies multiple substitution rules  
- `script.sh` – Supporting Bash logic for input handling and execution  
- `kitty_info.txt` – Generated metadata file with pattern counts and line references  
- `stdout.txt` / `stderr.txt` – Output logs for validation and debugging  

#### Key Concepts Mastered

- Using `grep` for pattern detection and line-number extraction  
- Writing and modifying regular expressions (character classes, quantifiers, capture groups)  
- Performing chained substitutions with `sed`  
- Applying global replacements using the `g` flag  
- Redirecting output with `>` and `>>`  
- Piping commands to build processing pipelines  
- Counting matches with `wc -l`  
- Extracting and transforming line numbers via capture groups  
- Comparing files with `diff --color`  
- Writing executable Bash scripts with positional parameters (`$1`)  

#### Data Automation

The project automates text transformation by:

- Accepting an input file as a command-line argument  
- Applying multiple sequential regex-based substitutions  
- Generating transformed output files programmatically  
- Capturing pattern occurrence statistics  
- Producing structured output logs for verification  

This workflow simulates real-world command-line data processing pipelines, where raw text is filtered, transformed, and validated through chained Unix utilities.  

### 3. Build a Bike Rental Shop

A PostgreSQL-backed command-line application that simulates a bike rental management system.  
This project demonstrates relational database design, table relationships, sequence management, conditional logic in Bash, and real-time data interaction using SQL queries executed from a shell script.

#### Structure

- `bikes_full.sql` – PostgreSQL database dump containing schema, tables, and sequences  
- `bike-shop.sh` – Bash application that interacts with the database  
- `bikes` table – Stores bike inventory, type, size, and availability status  
- `customers` table – Stores customer records identified by phone number  
- `rentals` table – Tracks rental transactions and links customers to bikes  

#### Key Concepts Mastered

- Designing relational database schemas with primary keys and foreign keys  
- Creating and managing sequences for auto-incremented IDs  
- Writing `CREATE TABLE`, `ALTER TABLE`, and `INSERT` statements  
- Querying data with `SELECT` and filtering with `WHERE` clauses  
- Updating records using `UPDATE` to manage inventory availability  
- Handling user input validation in Bash (numeric checks with regex)  
- Executing SQL queries inside shell scripts using `psql`  
- Capturing query results into Bash variables  
- Implementing conditional logic based on query results  
- Managing database-driven workflows from the command line 

#### Data Automation

The project automates rental operations by:

- Displaying dynamically queried bike inventory  
- Validating user input before executing database logic  
- Checking bike availability through SQL queries  
- Creating new customer records when needed  
- Recording rental transactions in the database  
- Updating bike availability status in real time  

This workflow simulates a transactional system where a Bash application acts as the interface layer and PostgreSQL manages persistent data storage. The project reinforces how command-line applications can integrate directly with relational databases to create structured, stateful systems.

---

## Certification Projects

### 1. Universe Database (Celestial Bodies Database)

A PostgreSQL relational database that models a simplified universe with multiple types of celestial bodies.  
This project demonstrates sound relational design using primary and foreign keys and a well-structured schema.

#### Database Structure
- **galaxy**: Stores galaxies with attributes such as name, type, age, and distance from Earth
- **star**: Stores stars and their associated galaxies
- **planet**: Stores planets orbiting stars
- **moon**: Stores moons orbiting planets
- **comet**: Stores comets with orbital and discovery data

#### Key Concepts Demonstrated
- One-to-many relationships
- Foreign key constraints
- Data types and NOT NULL / UNIQUE constraints
- Schema organization and normalization

---

## Technologies Used
- PostgreSQL
- SQL
- Bash Scripting

---

## Certification
Part of the [freeCodeCamp Relational Database Certification](https://www.freecodecamp.org/learn/relational-databases-v9/)
