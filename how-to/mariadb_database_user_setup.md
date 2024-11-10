### MariaDB Database and User Creation

1. **Create a Database:**
   ```sql
   CREATE DATABASE `my_database`;
   ```

2. **Create a User:**
   ```sql
   CREATE USER 'my_user'@'%' IDENTIFIED BY 'my_password';
   ```

3. **Grant Permissions to the User:**
   ```sql
   GRANT ALL PRIVILEGES ON `my_database`.* TO 'my_user'@'%';
   FLUSH PRIVILEGES;
   ```

With these steps, you will:
- Create a database named `my_database`.
- Create a user named `my_user` with the password `my_password`.
- Grant full permissions to the `my_user` on the `my_database`.

### Explanation:
- **`CREATE DATABASE my_database;`**: This command creates a database named `my_database`.
- **`CREATE USER 'my_user'@'%' IDENTIFIED BY 'my_password';`**: This command creates a user `my_user` with the password `my_password`, and `'%'` means the user can connect from any IP address.
- **`GRANT ALL PRIVILEGES ON my_database.* TO 'my_user'@'%';`**: This command grants all privileges to `my_user` for the `my_database`.
- **`FLUSH PRIVILEGES;`**: This command reloads the privilege tables to apply the changes immediately.

These commands will set up the database and user with the necessary permissions in MariaDB.
