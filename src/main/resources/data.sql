INSERT OR IGNORE INTO user (id, username, password) VALUES (1, 'thomas', '$2a$10$PM8d3OGi0MY05Jk/mi3xxeC48PjFfYgIIZ/RKDKC35ohs9xDmXDMW');
INSERT OR IGNORE INTO user (id, username, password) VALUES (2, 'santiago', '$2a$10$PM8d3OGi0MY05Jk/mi3xxeC48PjFfYgIIZ/RKDKC35ohs9xDmXDMW');
INSERT OR IGNORE INTO user (id, username, password) VALUES (3, 'ashanti', '$2a$10$PM8d3OGi0MY05Jk/mi3xxeC48PjFfYgIIZ/RKDKC35ohs9xDmXDMW');
INSERT OR IGNORE INTO user (id, username, password) VALUES (4, 'julia', '$2a$10$PM8d3OGi0MY05Jk/mi3xxeC48PjFfYgIIZ/RKDKC35ohs9xDmXDMW');
INSERT OR IGNORE INTO user (id, username, password) VALUES (5, 'cheng', '$2a$10$PM8d3OGi0MY05Jk/mi3xxeC48PjFfYgIIZ/RKDKC35ohs9xDmXDMW');
INSERT OR IGNORE INTO post (id, text, likes, reads, popularity, tags) VALUES (1, 'Excepteur occaecat minim reprehenderit cupidatat dolore voluptate velit labore pariatur culpa esse mollit. Veniam ipsum amet eu dolor reprehenderit quis tempor pariatur labore. Tempor excepteur velit dolor commodo aute. Proident aute cillum dolor sint laborum tempor cillum voluptate minim. Amet qui eiusmod duis est labore cupidatat excepteur occaecat nulla.', 12, 5, 0.19, 'food,recipes,baking');
INSERT OR IGNORE INTO post (id, text, likes, reads, popularity, tags) VALUES (2, 'Ea cillum incididunt consequat ullamco nisi aute labore cupidatat exercitation et sunt nostrud. Occaecat elit tempor ex anim non nulla sit culpa ipsum aliquip. In amet in Lorem ut enim. Consectetur ea officia reprehenderit pariatur magna eiusmod voluptate. Nostrud labore id adipisicing culpa sunt veniam qui deserunt magna sint mollit. Cillum irure pariatur occaecat amet reprehenderit nisi qui proident aliqua.', 104, 200, 0.7, 'travel,hotels');
INSERT OR IGNORE INTO post (id, text, likes, reads, popularity, tags) VALUES (3, 'Voluptate consequat minim commodo nisi minim ut. Exercitation incididunt eiusmod qui duis enim sunt dolor sit nisi laboris qui enim mollit. Proident pariatur elit est elit consectetur. Velit anim eu culpa adipisicing esse consequat magna. Id do aliquip pariatur laboris consequat cupidatat voluptate incididunt sint ea.', 10, 32, 0.7, 'travel,airbnb,vacation');
INSERT OR IGNORE INTO post (id, text, likes, reads, popularity, tags) VALUES (4, 'This is post 4', 50, 300, 0.4, 'vacation,spa');
INSERT OR IGNORE INTO user_post (user_id, post_id) VALUES (2, 1);
INSERT OR IGNORE INTO user_post (user_id, post_id) VALUES (1, 1);
INSERT OR IGNORE INTO user_post (user_id, post_id) VALUES (2, 2);
INSERT OR IGNORE INTO user_post (user_id, post_id) VALUES (2, 3);
INSERT OR IGNORE INTO user_post (user_id, post_id) VALUES (3, 3);
INSERT OR IGNORE INTO user_post (user_id, post_id) VALUES (3, 4);