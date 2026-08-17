CREATE TABLE customers (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    created_at TIMESTAMP NOT NULL
);

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    role VARCHAR(30) NOT NULL,
    created_at TIMESTAMP NOT NULL
);

CREATE TABLE categories (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE tickets (
    id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    assigned_to INTEGER,
    category_id INTEGER NOT NULL,
    title VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    priority VARCHAR(20) NOT NULL,
    status VARCHAR(30) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP,
    resolved_at TIMESTAMP,

    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (assigned_to) REFERENCES users(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE ticket_comments (
    id INTEGER PRIMARY KEY,
    ticket_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    comment TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL,

    FOREIGN KEY (ticket_id) REFERENCES tickets(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE ticket_status_history (
    id INTEGER PRIMARY KEY,
    ticket_id INTEGER NOT NULL,
    old_status VARCHAR(30),
    new_status VARCHAR(30) NOT NULL,
    changed_by INTEGER NOT NULL,
    changed_at TIMESTAMP NOT NULL,

    FOREIGN KEY (ticket_id) REFERENCES tickets(id),
    FOREIGN KEY (changed_by) REFERENCES users(id)
);
