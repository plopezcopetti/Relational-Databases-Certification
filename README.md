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

---

## How to Run
```bash
psql -U <username> < universe.sql
psql -U <username> universe
```

## Certification
Part of the [freeCodeCamp Relational Database Certification](https://www.freecodecamp.org/learn/relational-databases-v9/)
