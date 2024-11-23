drop database ecommerce;
create database ecommerce;

USE ecommerce;

-- Products table
CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  image VARCHAR(255) NOT NULL
);

-- Users table
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  salutation VARCHAR(10),
  country VARCHAR(50),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE marketing_preferences (
  id INT AUTO_INCREMENT PRIMARY KEY,
  preference VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE user_marketing_preferences (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  preference_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (preference_id) REFERENCES marketing_preferences(id) ON DELETE CASCADE
);

-- Cart Items table
CREATE TABLE cart_items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT NOT NULL DEFAULT 1,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);

-- Orders table
CREATE TABLE orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  total DECIMAL(10, 2) NOT NULL,
  status ENUM('pending', 'completed', 'cancelled', 'shipping', 'processing') DEFAULT 'pending',
  checkout_session_id VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Order Items table
CREATE TABLE order_items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT NOT NULL DEFAULT 1,
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);

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
