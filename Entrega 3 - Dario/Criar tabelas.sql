USE biblioteca;

CREATE TABLE IF NOT EXISTS Tema (
    id_tema INT AUTO_INCREMENT PRIMARY KEY,
    nome_tema VARCHAR(100) UNIQUE
);

CREATE TABLE IF NOT EXISTS Autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome_autor VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(255),
    endereco VARCHAR(255),
    telefone VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    ano_publicacao YEAR,
    editora VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Aluguel (
    id_aluguel INT AUTO_INCREMENT PRIMARY KEY,
    id_livro INT NOT NULL,
    id_cliente INT NOT NULL,
    data_aluguel DATE NOT NULL,
    data_devolucao DATE,
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE IF NOT EXISTS Livro_Tema (
    id_livro INT NOT NULL,
    id_tema INT NOT NULL,
    PRIMARY KEY (id_livro, id_tema),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
    FOREIGN KEY (id_tema) REFERENCES Tema(id_tema)
);

CREATE TABLE IF NOT EXISTS Livro_Autor (
    id_livro INT NOT NULL,
    id_autor INT NOT NULL,
    PRIMARY KEY (id_livro, id_autor),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
);