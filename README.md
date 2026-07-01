# SQL Playground 🚀

This repository contains basic and intermediate SQL examples using MySQL.

## 📂 Files

### `createtable.sql`
Defines the structure of the `employees` table.

### `queries.sql`
Contains example SQL queries such as:
- SELECT statements
- filtering (WHERE)
- sorting (ORDER BY)
- JOIN operations
- pattern matching (LIKE)

⚠️ Note: Some queries use a `users` table which can be added later for practice.

### `procedures_and_views.sql`
More advanced SQL features:
- ✅ Indexes for performance
- ✅ Views to simplify queries
- ✅ Stored Procedures for reusable logic

---

## 🧪 Example Usage

```sql
-- Get all employees
SELECT * FROM employees;

-- Use the view
SELECT * FROM employee_overview;

-- Call stored procedure
CALL GetEmployeesHiredAfter('2022-01-01');
