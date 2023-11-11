CREATE TABLE categories (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE news (
    id INT PRIMARY KEY,
    category_id INT,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    date_published DATE,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);
CREATE TABLE comments (
    id INT PRIMARY KEY,
    news_id INT,
    comment_text TEXT NOT NULL,
    date_posted DATE,
    FOREIGN KEY (news_id) REFERENCES news(id)
);
CREATE TABLE news_ratings (
    id INT PRIMARY KEY,
    news_id INT,
    ip_address VARCHAR(15) NOT NULL,
    rating INT CHECK (rating >= 1 && rating <= 5),
    date_rated DATE,
    FOREIGN KEY (news_id) REFERENCES news(id)
);
