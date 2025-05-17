# BikeStore-SQL-DB

A simple SQL Server database schema for a bike store.  
This repository contains everything you need to create the **BikeStore** database: instructions, your manual tables setup, the SQL script, and an ER-diagram.

---

## 📁 Repository Structure

```
BikeStore-SQL-DB/
├─ README.md
├─ diagrams/
│  └─ er-diagram.png      ← rename/move your existing 1.png here
└─ BikeStore-SQL-DB.sql   ← single SQL script for remaining tables
```

> **Note:**  
> 1. The initial catalog tables (`brands`, `categories`, `products`) were created **manually** in SSMS via Object Explorer (with PKs and FKs).  
> 2. The provided script `BikeStore-SQL-DB.sql` automates creation of the remaining tables and their relationships.

---

## Tables Overview

| Table       | How Created                  | Key Columns                                                                                 |
|-------------|------------------------------|---------------------------------------------------------------------------------------------|
| **brands**     | Manual (Object Explorer)     | `brand_id` (PK), `brand_name`                                                               |
| **categories** | Manual (Object Explorer)     | `category_id` (PK), `category_name`                                                         |
| **products**   | Manual (Object Explorer)     | `product_id` (PK), `product_name`, `brand_id` (FK), `category_id` (FK), `model_year`, `list_price` |
| **customers**  | SQL Script                   | `customer_id` (PK), `first_name`, `last_name`, `phone`, `email`, `street`, `city`, `state`, `zip_code` |
| **stores**     | SQL Script                   | `store_id` (PK), `store_name`, `phone`, `email`, `street`, `city`, `state`, `zip_code`      |
| **staff**      | SQL Script                   | `staff_id` (PK), `first_name`, `last_name`, `email`, `phone`, `active`, `store_id` (FK), `manager_id` (FK) |
| **orders**     | SQL Script                   | `order_id` (PK), `customer_id` (FK), `order_status`, `order_date`, `required_date`, `shipped_date`, `store_id` (FK), `staff_id` (FK) |

---

## 🚀 Getting Started

### Prerequisites

- **Microsoft SQL Server**  
- **SQL Server Management Studio (SSMS)**

### Setup & Installation

1. **Clone the repository**  
   ```bash
   git clone https://github.com/mohamedhosam4/BikeStore-SQL-DB.git
   cd BikeStore-SQL-DB
   ```

2. **Create the database**  
   In SSMS, run:
   ```sql
   CREATE DATABASE BikeStore;
   GO
   USE BikeStore;
   GO
   ```

3. **Manually create the first three tables**  
   In Object Explorer → Tables → New → Table…, design and save:
   - **brands** (`brand_id` PK, `brand_name`)
   - **categories** (`category_id` PK, `category_name`)
   - **products** (`product_id` PK, `product_name`, `brand_id` FK, `category_id` FK, `model_year`, `list_price`)

4. **Execute the SQL script**  
   Open and execute **BikeStore-SQL-DB.sql** to create:
   - `customers`
   - `stores`
   - `staff`
   - `orders`


---

## 📊 ER Diagram

![ER Diagram](https://github.com/mohamedhosam4/BikeStore-SQL-DB/raw/main/1.png)

*(This is the screenshot you uploaded as `1.png`.)*

---

## 🤝 Contributing

1. Fork the repo  
2. Create a branch:  
   ```bash
   git checkout -b feature/YourFeatureName
   ```
3. Commit your changes:  
   ```bash
   git commit -m "Add awesome feature"
   ```
4. Push and open a Pull Request.

---

## 📜 License

This project is licensed under the MIT License.
