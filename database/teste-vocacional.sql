DROP DATABASE IF EXISTS testeVocacional;
CREATE DATABASE TesteVocacional;
USE TesteVocacional;

CREATE TABLE Carreiras(
	ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Nome VARCHAR(255),
    Descricao LONGTEXT
);

CREATE TABLE Perguntas(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Texto VARCHAR(255)
);

CREATE TABLE Respostas(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Texto VARCHAR(255),
    Carreira INT,
    Pergunta INT,
    FOREIGN KEY (Carreira) REFERENCES Carreiras (ID),
    FOREIGN KEY (Pergunta) REFERENCES Perguntas (ID)
);

INSERT INTO Carreiras VALUES 
(default, 'Desenvolvedor BackEnd', 'O back-end é a área que armazena os dados sendo consumidos ou manipulados pelo aplicativos ou softwares. Quem configura e cuida da manutenção desses bancos de dados hoje é o DBA, e quem manipula essas informações no dia a dia é o desenvolvedor back-end.'),
(default, 'Desenvolvedor FrontEnd', 'Podemos classificar como a parte visual de um site, aquilo que conseguimos interagir. Quem trabalha com Front End é responsável por desenvolver por meio do código uma interface gráfica e, normalmente, com as tecnologias base da Web: HTML, CSS e JavaScript.'),
(default, 'User Experience (UX)', 'O profissional de UX tem como papel trabalhar toda a jornada do usuário, arquitetura da informação e demais pontos de contato entre plataforma e público, cuidando muito bem dos elementos que afetam a experiência do cliente e que possam influenciar as suas percepções, emoções e comportamentos.'),
(default, 'Analista de Testes e Qualidade de Software', 'É o responsável pelo planejamento, execução e análise dos resultados da garantia da qualidade, assegurando que os produtos de trabalho e a execução dos processos pelos projetos de desenvolvimento de software estejam em conformidade com o Plano de Garantia da Qualidade, além de fornecer visibilidade para a equipe e gerência sobre esses processos e produtos de trabalho.'),
(default, 'Banco de Dados', 'Este profissional tem papel estratégico numa organização. Sua função é manipular sistemas tecnológicos que permitam organizar, estruturar e distribuir as informações de uma empresa.Também é responsável pela segurança dessas informações. Por isso vem encontrando cada vez mais espaço no mercado de trabalho.');

INSERT INTO Perguntas (Texto) VALUES
('Você preferiria conhecer um(a):'),
('Qual matéria da escola você mais se interessava?'),
('Uma folha pode ser mais útil para:'),
('Quando você entra em um site, o que te chama mais atenção?'),
('Você lida melhor com:'),
('Em trabalhos em equipe, os seus companheiros te consideram uma pessoa:'),
('Você gostaria de ter conhecido:'),
('Escolha um curso a seguir:'),
('O que mais te incomoda?'),
('Em quais tipos de Jogos você se destaca mais?');

INSERT INTO Respostas (Texto, Pergunta, Carreira) VALUES
('Biblioteca Nacional', 1, 5),
('Feira de ciências', 1, 1),
('Galeria de Arte', 1, 2),
('Projeto Social para ajudar as pessoas', 1, 3),
('Um restaurante famoso', 1, 4);

INSERT INTO Respostas (Texto, Pergunta, Carreira) VALUES
('Arte', 2, 2),
('Matemática', 2, 1),
('Filosofia', 2, 4),
('História e Geografia', 2, 3),
('Ciências', 2, 5);

INSERT INTO Respostas (Texto, Pergunta, Carreira) VALUES
('Fazer um desenho', 3, 2),
('Fazer cálculos', 3, 1),
('Organizar listas', 3, 5),
('Anotações', 3, 4),
('Fazer um origami', 3, 3);

INSERT INTO Respostas (Texto, Pergunta, Carreira) VALUES
('Uma aparência bonita e interativa', 4, 1),
('Como o site pode ser útil para as pessoas', 4, 3),
('Sua privacidade e seus dados', 4, 5),
('Se tudo funciona perfeitamente', 4, 4),
('Se o site é rápido e objetivo', 4, 2);

INSERT INTO Respostas (Texto, Pergunta, Carreira) VALUES
('Raciocínio lógico', 5, 1),
('Pessoas', 5, 3),
('Pensamento analítico', 5, 4),
('Arte e design', 5, 2),
('Organização', 5, 5);

INSERT INTO Respostas (Texto, Pergunta, Carreira) VALUES
('Perfeccionista', 6, 4),
('Alguém criativo', 6, 2),
('Lógica e racional', 6, 1),
('Preocupada com o bem estar do grupo', 6, 3),
('Organizada e confiável', 6, 5);

INSERT INTO Respostas (Texto, Pergunta, Carreira) VALUES
('Pablo Picasso (Artista)', 7, 2),
('Steve Jobs (Fundador da Apple)', 7, 3),
('Alan Turing (Pai da computação)', 7, 4),
('Albert Einstein (Físico)', 7, 5),
('Da Vinci (Inventor)', 7, 1);

INSERT INTO Respostas (Texto, Pergunta, Carreira) VALUES
('Gastronomia', 8, 1),
('Fotografia', 8, 2),
('Sociologia', 8, 3),
('Direito', 8, 4),
('Economia', 8, 5);

INSERT INTO Respostas (Texto, Pergunta, Carreira) VALUES
('Quando as coisas não saem como planejado', 9, 1),
('Quando criticam minhas ideias e projetos', 9, 2),
('Quando não aceitam meu ponto de vista', 9, 4),
('Quando tenho que lidar com bagunça', 9, 5),
('Quando as pessoas se desentendem', 9, 3);

INSERT INTO Respostas (Texto, Pergunta, Carreira) VALUES
('Sudoku', 10, 5),
('The Sims', 10, 3),
('Gartic', 10, 2),
('Xadrez', 10, 1),
('Jogo dos sete erros', 10, 4);
