-- Inserção de dados na tabela Tema
INSERT INTO Tema (nome_tema) VALUES
('Ficção Científica'),
('Romance'),
('Mistério'),
('Terror'),
('Fantasia');

-- Inserção de dados na tabela Autor
INSERT INTO Autor (nome_autor) VALUES
('Isaac Asimov'),
('Jane Austen'),
('Agatha Christie'),
('Stephen King'),
('J.R.R. Tolkien');

-- Inserção de dados na tabela Cliente
INSERT INTO Cliente (nome_cliente, endereco, telefone) VALUES
('Ana Silva', 'Rua das Flores, 123', '(11) 9999-8888'),
('Pedro Souza', 'Avenida Principal, 456', '(21) 8888-7777'),
('Carla Oliveira', 'Travessa da Paz, 789', '(31) 7777-6666'),
('Lucas Santos', 'Alameda dos Anjos, 101', '(41) 6666-5555'),
('Mariana Costa', 'Praça da Liberdade, 222', '(51) 5555-4444');

-- Inserção de dados na tabela Livro
INSERT INTO Livro (titulo, isbn, ano_publicacao, editora) VALUES
('Eu, Robô', '978-85-7657-049-2', 1950, 'Aleph'),
('Orgulho e Preconceito', '978-85-7888-708-6', 1813, 'Martin Claret'),
('O Assassinato de Roger Ackroyd', '978-85-254-2207-3', 1926, 'Globo Livros'),
('O Iluminado', '978-85-325-3017-8', 1977, 'Suma de Letras'),
('O Senhor dos Anéis: A Sociedade do Anel', '978-85-9508-030-1', 1954, 'HarperCollins');

-- Inserção de dados na tabela Aluguel
INSERT INTO Aluguel (id_livro, id_cliente, data_aluguel, data_devolucao) VALUES
(1, 1, '2025-05-01', '2025-05-08'),
(2, 2, '2025-05-05', NULL),
(3, 1, '2025-05-10', NULL),
(4, 3, '2025-04-20', '2025-04-30'),
(5, 4, '2025-05-15', NULL);

-- Inserção de dados na tabela Livro_Tema
INSERT INTO Livro_Tema (id_livro, id_tema) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(1, 3); -- Um livro pode ter mais de um tema

-- Inserção de dados na tabela Livro_Autor
INSERT INTO Livro_Autor (id_livro, id_autor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);autor