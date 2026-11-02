# NDT Business Operations Web App (Starter MVP)

A starter web application based on the NDT business workflow discussed:
Client → Inquiry → Quotation → PO → Job → NDT inspection → Report → Invoice → Payment.

## Technology
- Python + FastAPI
- MySQL database
- SQLAlchemy ORM
- HTML/CSS/JavaScript frontend
- REST API documentation at `/docs`

## Included in this MVP
- Dashboard counts
- Client register (create/list)
- Inquiry register (create/list)
- Job register (create/list)
- Inspector register (create/list)
- NDT technique register (create/list)
- MySQL models for quotations, purchase orders, job techniques, schedules, inspections, inspection results, reports, invoices, payments and expenses

The remaining workflow entities are represented in the database models; corresponding user-interface forms and full CRUD screens can be added in the next development iteration.

## 1. Requirements
- Python 3.10+
- MySQL Server 8+
- MySQL Workbench (recommended, optional)

## 2. Create database
Open MySQL Workbench and run `database.sql`, or run:

```sql
CREATE DATABASE ndt_business CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

## 3. Configure database connection
Copy `.env.example` to `.env` and enter your MySQL credentials:

```env
DB_HOST=localhost
DB_PORT=3306
DB_NAME=ndt_business
DB_USER=root
DB_PASSWORD=your_mysql_password
```

## 4. Install and run (Windows)
Open Command Prompt in this project folder:

```bat
py -m venv .venv
.venv\Scripts\activate
pip install -r requirements.txt
uvicorn app.main:app --reload
```

Open:
- Web app: http://127.0.0.1:8000
- API docs: http://127.0.0.1:8000/docs

Tables are created automatically when the app starts.

## Important
- This is a learning/prototype starter, not a production-ready enterprise system.
- No authentication, role permissions, audit trail, backups, file upload security, or formal database migrations are included yet.
- Before using real SGS/client data, obtain organizational approval and add authentication, authorization, validation, audit logging, encryption, backups, and deployment hardening.
- Use fictional/sample data while learning.
