// Classe para a entidade Usuario
class Usuario {
  constructor(id, nome, email) {
    this.id = id;
    this.nome = nome;
    this.email = email;
  }
  criarUsuario(nome, email) {
    //INSERT INTO usuario(nome, email) VALUES (?, ?)
  }
  lerUsuarios() {
    //SELECT * FROM usuario
  }
  lerUsuario(id) {
    //SELECT * FROM usuario WHERE ID = ?
  }
  atualizarUsuario(id) {
    //UPDATE usuario SET campo WHERE ID=?
  }
  atualizarEmailUsuario(id, email) {
    //UPDATE usuario SET email WHERE ID=?
  }
  atualizarNomeUsuario(id, nome) {
    //UPDATE usuario SET nome WHERE ID=?
  }
  deletarUsuario(id) {
    //DELETE FROM usuario WHERE ID=?
  }
}

// Classe para a entidade Produto
class Produto {
  constructor(id, nome, preco) {
    this.id = id;
    this.nome = nome;
    this.preco = preco;
  }
  criarProduto(preco, nome) {
    //INSERT INTO produtos(nome, preco) VALUES (?, ?)
  }
  lerProdutos() {
    //SELECT * FROM produtos
  }
  lerProduto(id) {
    //SELECT * FROM produtos WHERE ID = ?
  }
  atualizarProduto(id) {
    //UPDATE produtos SET campo WHERE ID=?
  }
  atualizarNomeProduto(id, nome) {
    //UPDATE produtos SET nome WHERE ID=? 
  }
  atualizarPrecoProduto(id, preco) {
    //UPDATE produtos SET preco WHERE ID=?
  }
  deletarProduto(id) {
    //DELETE FROM produtos WHERE ID=?
  }
}


// Classe para o relacionamento Compra
class Compra {
  constructor(id, data, quantidade, usuario, produto) {
    this.id = id;
    this.data = data;
    this.quantidade = quantidade;
    this.usuario = usuario; // Associação com a entidade Usuario
    this.produto = produto; // Associação com a entidade Produto
  }
  criarCompra(quantidade, produto, usuario, data) {
    //INSERT INTO compra(produto, usuario, data, quantidade) VALUES (?, ?, ?, ?)
  }
  lerCompras() {
    //SELECT * FROM compra
  }
  lerCompra(id) {
    //SELECT * FROM compra WHERE ID=?
  }
  atualizarCompra(id) {
    //UPDATE compra SET campo WHERE ID=?
  }
  deletarCompra(id) {
    //DELETE FROM compra WHERE ID=?
  }
}
