CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL
);

CREATE TABLE project_users (
    project_id INT,
    user_id INT,
    PRIMARY KEY (project_id, user_id),
    FOREIGN KEY (project_id) REFERENCES project(project_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE task (
    task_id INT PRIMARY KEY,
    project_id INT,
    author_id INT,
    task_name VARCHAR(255) NOT NULL,
    task_description TEXT,
    FOREIGN KEY (project_id) REFERENCES project(project_id),
    FOREIGN KEY (author_id) REFERENCES users(user_id)
);

CREATE TABLE task_user (
    task_id INT,
    user_id INT,
    PRIMARY KEY (task_id, user_id),
    FOREIGN KEY (task_id) REFERENCES task(task_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE file (
    file_id INT PRIMARY KEY,
    file_name VARCHAR(255) NOT NULL,
    project_id INT,
    task_id INT,
    file_path VARCHAR(255) NOT NULL,
    FOREIGN KEY (project_id) REFERENCES project(project_id),
    FOREIGN KEY (task_id) REFERENCES task(task_id)
);
