# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a simple web project by Gaurish consisting of a static HTML page and a MySQL database layer.

## Structure

- `index.html` — Static frontend entry point
- `db/migrations/` — Sequential SQL migration files for MySQL (numbered `NNN_description.sql`)

## Database

- **Engine:** MySQL (InnoDB), charset `utf8mb4_unicode_ci`
- **Migrations** are plain `.sql` files run in order against the target MySQL database.
- To apply a migration manually:
  ```bash
  mysql -u <user> -p <database> < db/migrations/001_create_contact_info.sql
  ```

## Conventions

### SQL Migrations
- Filename format: `NNN_description.sql` (e.g. `002_add_phone_to_contact_info.sql`)
- Every table must include standard columns:
  - `id` — `INT NOT NULL AUTO_INCREMENT PRIMARY KEY`
  - `created_at` — `DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP`
  - `created_by` — `VARCHAR(100) NOT NULL`
  - `updated_at` — `DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP`
  - `updated_by` — `VARCHAR(100) NOT NULL`
  - `is_deleted` — `TINYINT(1) NOT NULL DEFAULT 0` (soft delete flag)
- Use backtick-quoted identifiers and `IF NOT EXISTS` on `CREATE TABLE`.

### Branch naming
- Feature branches follow the pattern `claude/<feature-slug>-<id>` (e.g. `claude/hello-world-html-BtbC7`).
