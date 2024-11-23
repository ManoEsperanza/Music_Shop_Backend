use ecommerce;

INSERT INTO products (name, price, image) VALUES
('Concert Personal Gear', 699.99, 'https://picsum.photos/id/26/300/200'),
('Madison Square Garden Poster Showcase', 979.99, 'https://picsum.photos/id/274/300/200'),
('Sessionist for Concert', 569.99, 'https://picsum.photos/id/453/300/200'),
('Stage Lights', 729.99, 'https://picsum.photos/id/452/300/200'),
('Acoustic Guitar',579.99,'https://picsum.photos/id/145/300/200'),
('Speakers with Sub Woofer',389.99,'https://picsum.photos/id/529/300/200'),
('Premium Yamaha Grand Piano',2319.99,'https://picsum.photos/id/1082/300/200'),
('Premium Gibson Electric Guitar',1995.99,'https://picsum.photos/id/836/300/200'),
('Premium Sony Camera',839.99,'https://picsum.photos/id/250/300/200');


INSERT INTO marketing_preferences (id, preference) VALUES (1, 'email');  -- Email Marketing
INSERT INTO marketing_preferences (id, preference) VALUES (2, 'sms');    -- SMS Marketing
