CREATE SCHEMA IF NOT EXISTS event;

CREATE TABLE event.venue (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    city VARCHAR(100)
);

CREATE TABLE event.performance (
    id SERIAL PRIMARY KEY,
    creator_id INT NOT NULL,
    venue_id INT NOT NULL,
    year INT NOT NULL,
    CONSTRAINT fk_venue FOREIGN KEY (venue_id) REFERENCES event.venue(id)
);
