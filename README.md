# Relational Database Certification Projects

This repository contains projects completed as part of the **freeCodeCamp Relational Database Certification**.  
Each project focuses on applying PostgreSQL and SQL concepts, including relational modeling, constraints, and data integrity.

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

## How to Run
```bash
psql -U <username> < universe.sql
psql -U <username> universe
```

## Certification
Part of the [freeCodeCamp Relational Database Certification](https://www.freecodecamp.org/learn/relational-databases-v9/)
