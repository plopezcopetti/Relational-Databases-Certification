# freeCodeCamp – Relational Databases Certification

This repository contains projects completed as part of the **freeCodeCamp Relational Databases Certification**.  
Each project demonstrates practical experience in relational database design, data modeling, and structured data querying using PostgreSQL.

The projects included reflect skills relevant to data analysis workflows, including:

- Data normalization and schema design
- Relational data modeling
- Writing analytical SQL queries (JOINs, aggregations, filtering)
- Automating structured data ingestion using Bash scripting
- Extracting insights from structured datasets

These projects simulate real-world database environments where structured data must be stored, queried, and analyzed efficiently.

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

### 2. Build a World Cup Database

A PostgreSQL relational database that models FIFA World Cup tournament data from 2014-2018, including teams, games, rounds, and scores. This project demonstrates structured schema design, normalization principles, foreign key relationships, and automated data population using Bash scripting.

#### Structure
- `worldcup.sql` – PostgreSQL database dump containing schema, tables, and sequences
- `insert_data.sh` – Bash script that populates the database from CSV data
- `queries.sh` – Bash script that performs analytical queries on the database
- `games.csv` – Source data file containing World Cup game records from 2014-2018
- `teams` table – Stores unique team names with auto-generated team IDs
- `games` table – Stores game records including year, round, winner, opponent, and goals scored

#### Key Concepts Demonstrated
- One-to-many relationships (teams → games as winners/opponents)
- Primary and foreign key constraints
- Explicit sequence creation and ownership with `SERIAL` type
- Handling duplicate entries with `UNIQUE` constraints
- Schema normalization and referential integrity
- CSV data parsing and conditional insertion logic

#### Data Automation
The project includes a Bash script (`insert_data.sh`) that:

- Connects to PostgreSQL using `psql`
- Reads data from CSV files
- Checks for existing records before inserting
- Dynamically retrieves foreign keys
- Populates relational tables programmatically

This demonstrates integration between SQL and shell scripting for automated database population.

#### Query Analysis

The project includes a queries script (`queries.sh`) that performs analytical queries:

- Aggregation functions (SUM, AVG, COUNT, MAX)
- JOIN operations across related tables
- Filtering with WHERE clauses
- Pattern matching with LIKE operator
- Data analysis for tournament statistics

This showcases SQL querying skills for extracting meaningful insights from relational data.

### 3. Build a Salon Appointment Scheduler

A PostgreSQL-backed command-line appointment scheduling system for a salon.  
This project demonstrates relational database design, transactional data handling, conditional logic in Bash, and dynamic SQL execution through a shell-based interface.

#### Structure

- `salon.sql` – PostgreSQL database dump containing schema, tables, and sequences  
- `salon.sh` – Bash application that manages appointment scheduling  
- `services` table – Stores available salon services  
- `customers` table – Stores customer records identified by phone number  
- `appointments` table – Stores scheduled appointments linking customers and services  

#### Key Concepts Demonstrated

- Designing normalized relational schemas  
- One-to-many relationships (customers → appointments)  
- Foreign key constraints to enforce referential integrity  
- Auto-incremented primary keys using sequences / `SERIAL`  
- Data validation and conditional branching in Bash  
- Executing parameterized SQL queries via `psql`  
- Capturing SQL query results into Bash variables  
- Handling user input and dynamic workflow control  
- Preventing duplicate customer entries  
- Real-time insertion and retrieval of relational data  

#### Application Workflow

The project automates appointment scheduling by:

- Displaying dynamically queried service options  
- Validating user input before executing database logic  
- Checking for existing customers by phone number  
- Creating new customer records when necessary  
- Recording appointments with service ID, customer ID, and scheduled time  
- Confirming bookings using dynamically generated output  

This project simulates a real-world transactional system where a Bash application serves as the interface layer and PostgreSQL handles persistent data management. It reinforces how relational databases can power stateful applications through structured constraints and controlled data flow.

### 4. Build a Periodic Table Database

A PostgreSQL-backed command-line application that queries chemical element data from a normalized relational database.  
This project demonstrates multi-table JOIN operations, conditional input handling in Bash, and dynamic SQL execution based on user-provided arguments.

#### Structure

- `periodic_table.sql` – PostgreSQL database dump containing schema, tables, and constraints  
- `element.sh` – Bash script that queries element data based on atomic number, symbol, or name  
- `elements` table – Stores atomic number, symbol, and element name  
- `properties` table – Stores physical properties such as atomic mass and temperature points  
- `types` table – Stores element classification (e.g., metal, nonmetal, metalloid)  

#### Key Concepts Demonstrated

- Multi-table JOIN queries across normalized relational structures  
- One-to-one relationships between `elements` and `properties`  
- Foreign key constraints linking `properties` to `types`  
- Argument validation in Bash using conditional expressions  
- Regex-based numeric input detection (`^[0-9]+$`)  
- Dynamic SQL query construction based on input type  
- Parsing query results using `IFS="|"` and `read`  
- Handling empty query results gracefully  
- Structured formatted output generation  

#### Application Workflow

The script accepts a single argument and determines whether the input corresponds to:

- An atomic number  
- A chemical symbol  
- An element name  

Based on the detected input type, it executes the appropriate SQL query using JOIN operations to retrieve:

- Atomic number  
- Symbol  
- Name  
- Element classification  
- Atomic mass  
- Melting point  
- Boiling point  

If the element exists, the script formats and displays the information in a structured sentence.  
If not, it returns a controlled error message.

This project reinforces relational modeling, JOIN logic, conditional branching in shell scripting, and clean command-line interface design powered by PostgreSQL.

### 5. Build a Number Guessing Game

A PostgreSQL-backed command-line number guessing game that tracks user statistics across sessions.  
This project demonstrates database-driven state management, conditional logic in Bash, and persistent user data tracking.

#### Structure

- `number_guess.sql` – PostgreSQL database dump containing schema and constraints  
- `number_guess.sh` – Bash script implementing the interactive guessing game  
- `users` table – Stores player usernames  
- `games` table – Stores game attempts, guesses, and links to users  

#### Key Concepts Demonstrated

- One-to-many relationships (users → games)  
- Foreign key constraints for relational integrity  
- Auto-incremented primary keys using `SERIAL`  
- Random number generation in Bash  
- Loop control and input validation  
- Numeric validation using regex  
- Executing SQL queries inside shell scripts  
- Tracking aggregate statistics (best game, total games played)  
- Conditional output based on stored data  

#### Application Workflow

The script:

- Prompts the user for a username  
- Checks if the user already exists in the database  
- Retrieves stored statistics for returning players  
- Generates a random secret number  
- Validates numeric guesses  
- Counts attempts dynamically  
- Stores game results in the database  
- Displays personalized statistics after completion  

This project reinforces how relational databases can persist user state across sessions while a shell-based interface handles interaction logic and control flow.

---

## Technologies Used
- PostgreSQL
- Bash Scripting

## Analytical Skills Demonstrated

- Complex JOIN operations across normalized datasets
- Aggregation functions (SUM, COUNT, AVG, MAX)
- Data filtering and transformation
- Conditional querying
- Basic dataset automation pipelines
- Schema normalization for analytical consistency
- Data integrity enforcement through constraints
- Multi-table relational querying

---

## Certification
Part of the [freeCodeCamp Relational Database Certification](https://www.freecodecamp.org/learn/relational-databases-v9/)
