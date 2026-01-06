CREATE SCHEMA IF NOT EXISTS song;

CREATE TABLE song.music_creator (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE song.person (
    id SERIAL PRIMARY KEY,
    creator_id INT,
    name VARCHAR(255) NOT NULL,
    birth_city VARCHAR(255),
    CONSTRAINT fk_creator FOREIGN KEY (creator_id) REFERENCES song.music_creator(id)
);

CREATE TABLE song.music_genre (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE song.song (
    id SERIAL PRIMARY KEY,
    creator_id INT,
    genre_id INT,
    name VARCHAR(255) NOT NULL,
    CONSTRAINT fk_creator FOREIGN KEY (creator_id) REFERENCES song.music_creator(id),
    CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES song.music_genre(id)
);
