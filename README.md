Api for CCSN mobile app.

Technologies used:
  •	Programming language: Java
  •	Database: PostgreSQL
  •	Frameworks: Spring Boot, Spring Data JPA 
  •	Build tool: Maven
  •	Tracking database migrations: Flyway

Project setup instructions:
  1)	Install Java
  2)	Install Maven
  3)	Install PostgreSQL (when installing, make sure user “postgres” is assigned a password “postgres”)
  4)	Open PostgreSQL and create database with name “ccsn_api” and with owner “postgres”. 
      If you want to use another database name you can, but change it later in project’s “application.properties” and “pom.xml” files as well.
  5)	In the project root directory, run mvn flyway:migrate. 
      This will run all the database migrations and create all the tables and fill the data (specified in resources/db/migration). 
      If you update SQL files in this folder, run the same command again. 
      If it looks like Flyway does not recognize the changes – try to rebuild the project (in IDE find “rebuild project” option).
