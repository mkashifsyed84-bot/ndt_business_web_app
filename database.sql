CREATE DATABASE IF NOT EXISTS ndt_business
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE ndt_business;

-- The application creates/updates its tables from SQLAlchemy models at startup.
-- This file creates the database only; use Alembic migrations before production.
