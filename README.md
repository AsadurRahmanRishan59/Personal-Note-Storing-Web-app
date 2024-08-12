# Personal Note Storing Web App

## Purpose

A web application designed for managing and storing personal notes. This application allows users to create, update, delete, and view their notes easily.

## Features

- **Add New Notes**: Create and add new notes to the database.
- **Update Existing Notes**: Modify and update notes that have already been saved.
- **Delete Unwanted Notes**: Remove notes that are no longer needed.
- **View All Notes**: Access and view all notes, including those that have been updated or edited.

## Technologies

- **View & Control**: JSP (JavaServer Pages), Servlets, Bootstrap
- **Database**: MySQL
- **ORM (Object-Relational Mapping)**: Hibernate for database connectivity

## Getting Started

To get a local copy of this project up and running, follow these steps:

1. **Clone the repository:**

   ```bash
   git clone https://github.com/AsadurRahmanRishan59/Personal-Note-Storing-Web-app.git
   ```

2. **Navigate to the project directory:**

   ```bash
   cd Personal-Note-Storing-Web-app
   ```

3. **Setup the database:**
   - Ensure you have MySQL installed and running.
   - Create a new database and import the SQL schema provided in the `sql` directory (if available).

4. **Configure Hibernate:**
   - Update the Hibernate configuration file (`hibernate.cfg.xml`) with your database credentials.

5. **Deploy the application:**
   - Deploy the project to your servlet container (e.g., Apache Tomcat).

6. **Access the application:**
   - Open a web browser and navigate to `http://localhost:8080/index.jsp`.

