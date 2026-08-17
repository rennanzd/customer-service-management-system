-- 1. List all open tickets

SELECT
    id,
    title,
    priority,
    status,
    created_at
FROM tickets
WHERE status <> 'Closed'
ORDER BY created_at ASC;


-- 2. List tickets assigned to a specific agent

SELECT
    id,
    title,
    priority,
    status
FROM tickets
WHERE assigned_to = 1
ORDER BY priority DESC;


-- 3. Count tickets by status

SELECT
    status,
    COUNT(*) AS total
FROM tickets
GROUP BY status;


-- 4. Count tickets by priority

SELECT
    priority,
    COUNT(*) AS total
FROM tickets
GROUP BY priority;


-- 5. List tickets that have not been resolved

SELECT
    id,
    title,
    status,
    created_at
FROM tickets
WHERE resolved_at IS NULL
ORDER BY created_at ASC;


-- 6. Show customer requests

SELECT
    c.name AS customer,
    t.id AS ticket_id,
    t.title,
    t.status,
    t.priority
FROM customers c
JOIN tickets t
    ON c.id = t.customer_id
ORDER BY c.name;
