-- Categories
INSERT INTO categories (id, name) VALUES (1, 'TV/Movies');
INSERT INTO categories (id, name) VALUES (2, 'Anime');
INSERT INTO categories (id, name) VALUES (3, 'Software');
INSERT INTO categories (id, name) VALUES (4, 'Music');

-- Links
INSERT INTO links (title, description, url, category_id) VALUES
('Breaking Bad',
 'Critically acclaimed crime drama series.',
 'https://www.netflix.com/title/70143836',
 1);

INSERT INTO links (title, description, url, category_id) VALUES
('Attack on Titan',
 'Popular anime series set in a post-apocalyptic world.',
 'https://www.crunchyroll.com/series/GR751KNZY/attack-on-titan',
 2);

INSERT INTO links (title, description, url, category_id) VALUES
('Visual Studio Code',
 'Lightweight but powerful code editor.',
 'https://code.visualstudio.com/',
 3);

INSERT INTO links (title, description, url, category_id) VALUES
('Lo-fi Beats Playlist',
 'Relaxing lo-fi beats for studying and coding.',
 'https://open.spotify.com/playlist/37i9dQZF1DX2Nc3B70tvx0',
 4);
