const { Client } = require('pg');

const consulta = new Client({
  host: 'localhost',
  port: 5432,
  database: 'postgres',
  user: 'postgres',
  password: 'BemVindo!'
});

consulta.connect(function(err) {
  if (err) {
    console.log('Erro ao conectar no Postgres:', err.message);
  } else {
    console.log('Conectado ao Postgres com sucesso');
  }
});

module.exports = consulta;