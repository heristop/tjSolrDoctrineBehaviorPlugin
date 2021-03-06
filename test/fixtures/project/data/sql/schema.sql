CREATE TABLE post (id BIGINT AUTO_INCREMENT, thread_id BIGINT NOT NULL, title VARCHAR(255) NOT NULL, body LONGTEXT NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX thread_id_idx (thread_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE story_translation (id BIGINT, body LONGTEXT NOT NULL, lang CHAR(2), PRIMARY KEY(id, lang)) ENGINE = INNODB;
CREATE TABLE story (id BIGINT AUTO_INCREMENT, slug VARCHAR(50), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE thread (id BIGINT AUTO_INCREMENT, title VARCHAR(255) NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
ALTER TABLE post ADD CONSTRAINT post_thread_id_thread_id FOREIGN KEY (thread_id) REFERENCES thread(id) ON DELETE CASCADE;
ALTER TABLE story_translation ADD CONSTRAINT story_translation_id_story_id FOREIGN KEY (id) REFERENCES story(id) ON UPDATE CASCADE ON DELETE CASCADE;
