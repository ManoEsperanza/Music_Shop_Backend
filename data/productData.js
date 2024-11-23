const pool = require('../database');

async function getAllProducts() {
  console.log('c')
  const [rows] = await pool.query('SELECT id, name, CAST(price AS DOUBLE) AS price, image FROM products;');
 console.log(rows)
  return rows;
}  

async function getProductById(id) {
  const [rows] = await pool.query('SELECT * FROM products WHERE id = ?', [id]);
  return rows[0];
}

module.exports = {
  getAllProducts,getProductById
};