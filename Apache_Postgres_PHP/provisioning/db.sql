CREATE TABLE IF NOT EXISTS tasks (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    status TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

INSERT INTO tasks (id, title, description, status, created_at, updated_at) VALUES 
    (0, 'Task 1', 'Description 1', 'open', NOW(), NOW()),
    (1, 'Task 2', 'Description 2', 'open', NOW(), NOW()),
    (2, 'Task 3', 'Description 3', 'open', NOW(), NOW()),
    (3, 'Task 4', 'Description 4', 'open', NOW(), NOW()),
    (4, 'Task 5', 'Description 5', 'open', NOW(), NOW()),
    (5, 'Task 6', 'Description 6', 'open', NOW(), NOW()),
    (6, 'Task 7', 'Description 7', 'open', NOW(), NOW()),
    (7, 'Task 8', 'Description 8', 'open', NOW(), NOW()),
    (8, 'Task 9', 'Description 9', 'open', NOW(), NOW()),
    (9, 'Task 10', 'Description 10', 'open', NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, status = EXCLUDED.status, created_at = EXCLUDED.created_at, updated_at = EXCLUDED.updated_at;

