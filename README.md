# Relational Database Certification Projects

This repository contains projects completed as part of the **freeCodeCamp Relational Database Certification**.  
Each project focuses on applying PostgreSQL and SQL concepts, including relational modeling, constraints, and data integrity.

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
