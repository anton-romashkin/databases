USE vk_new;

DROP TABLE IF EXISTS attachments;
CREATE TABLE attachments(
	id SERIAL PRIMARY KEY,
	media_id BIGINT UNSIGNED NOT NULL,

    FOREIGN KEY (media_id) REFERENCES media(id)
);

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
	attachment_id BIGINT UNSIGNED,
    head VARCHAR(255),
    body TEXT,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (attachment_id) REFERENCES attachments(id)
);

DROP TABLE IF EXISTS media_communities;
CREATE TABLE media_communities(
	media_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,

	PRIMARY KEY (media_id, community_id),
    FOREIGN KEY (community_id) REFERENCES communities(id)
);
