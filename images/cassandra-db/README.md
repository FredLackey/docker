# Cassandra Docker Examples

This directory contains three distinct examples of how to configure and run a Cassandra database using Docker, each demonstrating a different level of security.

## Directory Structure

-   `no-security/`: A basic Cassandra setup with no authentication.
-   `password-security/`: A Cassandra instance protected by a single superuser password.
-   `user-security/`: A more advanced setup with a superuser and multiple, fine-grained application users.

## Functional Differences

### 1. `no-security`

This is the most straightforward but least secure configuration.

-   **Authentication**: Disabled. Any client that can connect to the database port has full superuser access without needing to provide any credentials.
-   **Use Case**: Ideal for initial development or scenarios where the database is in a completely isolated and trusted network, and ease of access is prioritized over security.

### 2. `password-security`
h
This configuration introduces a basic layer of security by requiring a password for the primary superuser.

-   **Authentication**: Enabled using `PasswordAuthenticator`.
-   **Users**: A single superuser (named `cassandra`) is created on startup using the `CASSANDRA_USER` and `CASSANDRA_PASSWORD` environment variables. All database operations, including initial setup, must be performed by this user.
-   **Use Case**: Suitable for development environments or simple applications where a single administrative user is sufficient and you need to prevent unauthorized access.

### 3. `user-security`

This example builds on the password security model to provide a more realistic, production-like user setup with role-based access control.

-   **Authentication**: Enabled using `PasswordAuthenticator`.
-   **Users**:
    -   A primary superuser (`cassandra`) is created at startup, just as in the `password-security` example.
    -   The `init.cql` script, executed by the superuser, creates additional, non-privileged users with specific roles and permissions. The example includes:
        -   `app_user`: A user with full permissions on the application's keyspace.
        -   `readonly_user`: A user with read-only access to the application's keyspace.
-   **Use Case**: Best for staging or production environments where you need to enforce the principle of least privilege, providing different applications or services with only the database permissions they require to function. 

## Contact Info  

Should you need a hand with any of the items in this repo, feel free to reach out:

Fred Lackey  
[http://fredlackey.com](http://fredlackey.com)  
[fred.lackey@gmail.com](mailto://fred.lackey@gmail.com)