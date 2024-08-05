# Moneyball: Optimizing Baseball Player Value with SQL

## Project Overview

In this project, we leverage SQL to help the Oakland Athletics (A’s) baseball team make the most of their limited budget for the 2001 season. The challenge was to analyze player data and identify undervalued players who could provide high performance at a lower cost. This project involves querying a database (`moneyball.db`) to extract valuable insights on player salaries, performances, and team data.

## Problem Statement

The Oakland Athletics faced a budget constraint and needed to assemble a competitive team. The goal was to identify players who were undervalued and could deliver high performance for a lower cost. By analyzing historical data, the project aimed to provide recommendations on player acquisitions and strategic decisions.

## Database Schema

The `moneyball.db` database includes the following tables:
- **players**: Information about MLB players.
- **teams**: Details of MLB teams.
- **performances**: Player performance metrics.
- **salaries**: Player salary data.

### Entity Relationships
- **Player** earns **Salary**
- **Player** generates **Performance**
- **Team** pays **Salary**
- **Player** plays for **Team**

## SQL Queries and Tasks

1. **Average Player Salaries by Year**
   - Calculate the average salary of players for each year.
   - File: `1.sql`

2. **Cal Ripken Jr.’s Salary History**
   - Retrieve salary history for Cal Ripken Jr.
   - File: `2.sql`

3. **Ken Griffey Jr.’s Home Run History**
   - Find home run statistics for Ken Griffey Jr.
   - File: `3.sql`

4. **Lowest Salaries in 2001**
   - Identify the 50 players with the lowest salaries in 2001.
   - File: `4.sql`

5. **Teams Satchel Paige Played For**
   - List all teams that Satchel Paige played for.
   - File: `5.sql`

6. **Top Teams by Hits in 2001**
   - Find the top 5 teams with the highest total number of hits in 2001.
   - File: `6.sql`

7. **Highest Paid Player of All Time**
   - Determine the player with the highest salary of all time.
   - File: `7.sql`

8. **Top Home Run Hitter’s Salary in 2001**
   - Find the salary of the player with the most home runs in 2001.
   - File: `8.sql`

9. **Lowest Paying Teams in 2001**
   - Identify the 5 teams with the lowest average salaries in 2001.
   - File: `9.sql`

10. **Player Salary, Home Runs, and Year**
    - Generate a comprehensive table of player salaries, home runs, and performance details by year.
    - File: `10.sql`

11. **Least Expensive Players per Hit in 2001**
    - Find the 10 least expensive players per hit in 2001.
    - File: `11.sql`

12. **Least Expensive Players per Hit and RBI**
    - Identify players who are among the 10 least expensive per hit and per RBI in 2001.
    - File: `12.sql`

## Usage

To test the queries, use the following commands:

1. Run a SQL file:
   ```sh
   .read FILENAME.sql
