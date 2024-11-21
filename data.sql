use ecommerce;

INSERT INTO products (name, price, image) VALUES
('Concert Personal Gear', 699.99, 'https://picsum.photos/id/26/300/200'),
('Madison Square Garden Poster Showcase', 979.99, 'https://picsum.photos/id/274/300/200'),
('Sessionist for Concert', 569.99, 'https://picsum.photos/id/453/300/200'),
('Stage Lights', 729.99, 'https://picsum.photos/id/452/300/200');

INSERT INTO marketing_preferences (id, preference) VALUES (1, 'email');  -- Email Marketing
INSERT INTO marketing_preferences (id, preference) VALUES (2, 'sms');    -- SMS Marketing
