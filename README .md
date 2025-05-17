# BikeStore-SQL-DB

A simple SQL Server database schema for a bike store.  
This repository contains everything you need to create the **BikeStore** database: instructions, SQL scripts for the latter tables, and an ER-diagram.

---

## 📁 Repository Structure

```
BikeStore-SQL-DB/
├─ README.md
├─ diagrams/
│  └─ er-diagram.png
└─ sql/
   └─ 02_create_customers_orders_stores_staff.sql
```

> **Note:** The initial catalog tables (`brands`, `categories`, `products`) were created manually using SQL Server Management Studio's Object Explorer.  
> The provided SQL script automates creation of the remaining tables and relationships.

- **`diagrams/er-diagram.png`**  
  An Entity–Relationship diagram showing all tables and their primary/foreign key relationships.

- **`sql/02_create_customers_orders_stores_staff.sql`**  
  Creates the sales-side tables:
  - `customers`  
    - `customer_id` (PK)  
    - `first_name`, `last_name`, `phone`, `email`, `street`, `city`, `state`, `zip_code`
  - `stores`  
    - `store_id` (PK)  
    - `store_name`, `phone`, `email`, `street`, `city`, `state`, `zip_code`
  - `staff`  
    - `staff_id` (PK)  
    - `first_name`, `last_name`, `email`, `phone`, `active`  
    - `store_id` (FK → `stores.store_id`)  
    - `manager_id` (self-reference FK → `staff.staff_id`)
  - `orders`  
    - `order_id` (PK)  
    - `customer_id` (FK → `customers.customer_id`)  
    - `order_status`, `order_date`, `required_date`, `shipped_date`  
    - `store_id` (FK → `stores.store_id`)  
    - `staff_id` (FK → `staff.staff_id`)

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
   In SSMS, open a new query window and run:
   ```sql
   CREATE DATABASE BikeStore;
   GO
   USE BikeStore;
   GO
   ```

3. **Manual creation of initial tables**  
   Using SSMS Object Explorer, right-click **Tables** → **New** → **Table...**, then design and save:
   - **brands** (`brand_id` PK, `brand_name`)
   - **categories** (`category_id` PK, `category_name`)
   - **products** (`product_id` PK, `product_name`, `brand_id` FK, `category_id` FK, `model_year`, `list_price`)

4. **Execute the SQL script for remaining tables**  
   Open **sql/02_create_customers_orders_stores_staff.sql** and click **Execute**.

5. **Verify**  
   - In **Object Explorer**, refresh and expand **Tables** to see all tables.  
   - To view the diagram, go to **Database Diagrams**, create a new diagram, and add all tables. You should see the ER-diagram match the one in this repo.

---

## 📊 ER Diagram

![ER Diagram](diagrams/er-diagram.png)

---

## 🤝 Contributing

1. Fork the repo  
2. Create a branch:  
   ```bash
   git checkout -b feature/YourFeatureName
   ```
3. Commit your changes:  
   ```bash
   git commit -m "Add some feature"
   ```
4. Push to your branch:  
   ```bash
   git push origin feature/YourFeatureName
   ```
5. Open a Pull Request

---

## 📜 License

This project is licensed under the MIT License.
