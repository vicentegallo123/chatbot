

//llamar a la libreria
const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '12345',
  database: 'sistemaventa' 
});

connection.connect();

module.exports = connection;


const productos = "SELECT nombre, proveedor, precio FROM productos";
//verificacion  de conexion
connection.query(productos,function(err,lista){
  if(err) {
    throw err;
  }else{
    console.log(lista);
  }
});
//cerrar la conexion con metodo end
connection.end();


