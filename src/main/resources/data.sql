-- Categories
INSERT INTO categories (id, name) VALUES (1, 'All Purpose');
INSERT INTO categories (id, name) VALUES (2, 'TV & Movies');
INSERT INTO categories (id, name) VALUES (3, 'Anime');
INSERT INTO categories (id, name) VALUES (4, 'Software');
INSERT INTO categories (id, name) VALUES (5, 'Games');
INSERT INTO categories (id, name) VALUES (6, 'Music');

-- Links
INSERT INTO links (title, description, url, category_id) VALUES
('Internet Archive', 'Millions of free books, films, songs, and more are available at this nonprofit library..', 'https://archive.org/', 1)
('Reddit', 'Community-based forums on countless topics.', 'https://www.reddit.com', 1),
('Quora', 'Q&A platform for knowledge sharing.', 'https://www.quora.com', 1),
('Stack Overflow', 'Developer-focused Q&A site.', 'https://stackoverflow.com', 1),
('Wikipedia', 'Free online encyclopedia.', 'https://www.wikipedia.org', 1),
('Medium', 'Articles and blogs on a variety of topics.', 'https://medium.com', 1),
('GitHub', 'Code hosting and collaboration.', 'https://github.com', 1),
('Pastebin', 'Simple text storage and sharing.', 'https://pastebin.com', 1),
('Archive.org', 'Digital library of free books, movies, software, and music.', 'https://archive.org', 1),
('Product Hunt', 'Discover new software and startups.', 'https://www.producthunt.com', 1),
('Khan Academy', 'Free education and learning resources.', 'https://www.khanacademy.org', 1);

INSERT INTO links (title, description, url, category_id) VALUES
('Netflix', 'Popular streaming platform for TV shows and movies.', 'https://www.netflix.com', 2),
('Amazon Prime Video', 'TV shows and movies streaming service.', 'https://www.primevideo.com', 2),
('Hulu', 'Streaming service for movies and TV shows.', 'https://www.hulu.com', 2),
('Disney+', 'Movies and TV shows from Disney, Marvel, Pixar, and more.', 'https://www.disneyplus.com', 2),
('HBO Max', 'Premium movies and series.', 'https://www.hbomax.com', 2),
('Peacock', 'Streaming service with TV and movies.', 'https://www.peacocktv.com', 2),
('Apple TV+', 'Apple’s premium original shows and movies.', 'https://tv.apple.com', 2),
('Paramount+', 'Streaming platform with movies and TV shows.', 'https://www.paramountplus.com', 2),
('Tubi', 'Free streaming movies and TV shows.', 'https://tubitv.com', 2),
('Crackle', 'Free TV shows and movies online.', 'https://www.crackle.com', 2);

INSERT INTO links (title, description, url, category_id) VALUES
('Crunchyroll', 'Anime streaming service.', 'https://www.crunchyroll.com', 3),
('Funimation', 'Dubbed and subbed anime streaming.', 'https://www.funimation.com', 3),
('HIDIVE', 'Anime streaming with subs and dubs.', 'https://www.hidive.com', 3),
('9Anime', 'Free anime streaming site.', 'https://9anime.to', 3),
('AnimePlanet', 'Anime streaming and community site.', 'https://www.anime-planet.com', 3),
('Gogoanime', 'Popular free anime site.', 'https://gogoanime.lu', 3),
('Netflix Anime', 'Netflix’s anime catalog.', 'https://www.netflix.com/browse/genre/7424', 3),
('AnimeHeaven', 'Free anime streaming.', 'https://animeheaven.ru', 3),
('VRV', 'Anime and animation streaming.', 'https://vrv.co', 3),
('AniList', 'Anime database and tracking site.', 'https://anilist.co', 3);

INSERT INTO links (title, description, url, category_id) VALUES
('GitHub', 'Code collaboration and hosting.', 'https://github.com', 4),
('SourceForge', 'Open source software repository.', 'https://sourceforge.net', 4),
('FileHippo', 'Software downloads and reviews.', 'https://filehippo.com', 4),
('Softpedia', 'Free software downloads.', 'https://www.softpedia.com', 4),
('Ninite', 'Bulk software installer.', 'https://ninite.com', 4),
('MajorGeeks', 'Trusted software downloads.', 'https://www.majorgeeks.com', 4),
('AlternativeTo', 'Find software alternatives.', 'https://alternativeto.net', 4),
('FossHub', 'Free and open-source software downloads.', 'https://www.fosshub.com', 4),
('OSDN', 'Open-source development platform.', 'https://osdn.net', 4),
('Apache', 'Popular open-source software projects.', 'https://www.apache.org', 4);

INSERT INTO links (title, description, url, category_id) VALUES
('Steam', 'Largest digital distribution platform for PC games.', 'https://store.steampowered.com', 5),
('Epic Games Store', 'Game distribution platform.', 'https://www.epicgames.com/store', 5),
('GOG', 'DRM-free games platform.', 'https://www.gog.com', 5),
('Itch.io', 'Indie game marketplace.', 'https://itch.io', 5),
('Origin', 'Electronic Arts game store.', 'https://www.origin.com', 5),
('Battle.net', 'Blizzard game platform.', 'https://www.blizzard.com', 5),
('Ubisoft Connect', 'Ubisoft game platform.', 'https://store.ubisoft.com', 5),
('Xbox Game Pass', 'Microsoft game subscription.', 'https://www.xbox.com/xbox-game-pass', 5),
('PlayStation Store', 'Sony’s digital store for PS games.', 'https://store.playstation.com', 5),
('Game Jolt', 'Indie gaming community.', 'https://gamejolt.com', 5);

INSERT INTO links (title, description, url, category_id) VALUES
('Spotify', 'Music streaming service.', 'https://www.spotify.com', 6),
('Apple Music', 'Apple’s music streaming service.', 'https://music.apple.com', 6),
('SoundCloud', 'Music sharing and discovery platform.', 'https://soundcloud.com', 6),
('Bandcamp', 'Support independent musicians.', 'https://bandcamp.com', 6),
('YouTube Music', 'Google’s music streaming platform.', 'https://music.youtube.com', 6),
('Tidal', 'High fidelity music streaming.', 'https://tidal.com', 6),
('Deezer', 'Global music streaming service.', 'https://www.deezer.com', 6),
('Pandora', 'Internet radio and music streaming.', 'https://www.pandora.com', 6),
('Audiomack', 'Free music streaming and sharing.', 'https://audiomack.com', 6),
('Jamendo', 'Free independent music platform.', 'https://www.jamendo.com', 6);