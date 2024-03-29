const mysql = require('mysql');

const connection = mysql.createConnection({
    host: '127.0.0.1',
    port: 3306,
    user: 'aluno',
    password: 'aluno',
    database: 'teste'
});

connection.connect((err) => {
    if (err) {
        console.error("Erro ao conectar ao BD: ", err);
        return
    }
    console.log("Conectado ao BD!");
});

const sql = "SELECT * FROM usuario";
connection.query(sql, (err, results) => {
    if (err) {
        console.log("Erro na consulta: ", err);
        return;
    }
    console.log("Resultado da consulta: ", results)
})

connection.end((err) => {
    if (err) {
        console.error("Erro ao encerrar conexão: ", err);
        return
    }
    console.log("Conexão encerrada!");
});