const mysql = require('mysql');

const connection = mysql.createConnection({
  host: '10.140.40.27',
  user: 'root',
  password: 'admin',
  database: 'acessobd',
  port: 3306, // Porta do MySQL, ajuste se necessário
});AbortSignal=

connection.connect((err) => {
  if (err) {
    console.error('Erro ao conectar ao banco de dados:', err);
    return;
  }
  console.log('Conectado ao banco de dados MySQL com sucesso.');
});


// SELECT
let sql = "SELECT * FROM usuarios"
connection.query(sql, (err, results) => {
  if (err) {
    console.error('Erro na consulta:', err);
    return;
  }
  console.log('Resultado da consulta:', results);
});

// SELECT WHERE
let id = 1
sql = "SELECT * FROM usuarios WHERE id=?"
connection.query(sql, id, (err, results) => {
  if (err) {
    console.error("Erro na consulta:", err);
    return;
  }
  console.log("Resultado da consulta:", results);
});

// INSERT
let novoUsuario = ['Teste', "email@email.com"];
sql = 'INSERT INTO usuarios (nome, email) VALUES (?,?)'
connection.query(sql, novoUsuario, (err, results) => {
  if (err) {
    console.error('Erro ao inserir dados:', err);
    return;
  }
  console.log('Novo usuário inserido com sucesso, ID:', results.insertId);
});

novoUsuario = { nome: 'User', email: "meuemail@meuemail.com" };
sql = 'INSERT INTO usuarios SET ?'
connection.query(sql, novoUsuario, (err, results) => {
  if (err) {
    console.error('Erro ao inserir dados:', err);
    return;
  }
  console.log('Novo usuário inserido com sucesso, ID:', results.insertId);
});

// UPDATE
sql = `UPDATE usuarios SET email = ? WHERE id = ?`
let update = ["dhs.lima@gmail.com", 1]
connection.query(sql, update, (err, results) => {
  if (err) {
    console.error('Erro ao atualizar dados:', err);
    return;
  }
  console.log('Usuário atualizado com sucesso, ID:', results.insertId);
});

// DELETE
sql = 'DELETE FROM telefones WHERE FK_id = ?'
connection.query(sql, id, (err, results) => {
  if (err) {
    console.error('Erro ao inserir dados:', err);
    return;
  }
  console.log('Novo usuário deletado com sucesso, ID:', results.insertId);
});

let novoTelefone = { Fk_id: 1, Telefone: "98020245" };
sql = 'INSERT INTO Telefones Values (?,?)'
connection.query(sql, novoTelefone, (err, results) => {
  if (err) {
    console.error('Erro ao inserir dados:', err);
    return;
  }
  console.log('Novo Telefone inserido com sucesso, ID:', results.insertId);
});


connection.end((err) => {
  if (err) {
    console.error("Erro ao fechar a conexão com o banco de dados:", err);
    return;
  }
  console.log("Conexão encerrada com sucesso")
});