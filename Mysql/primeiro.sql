-- Meu primeiro arquivo DUMP para MySQL

-- Apaga o banco de dados caso ele exista
-- ----------------ATENÇÃO!------------------ --
-- Remova este comando após a publicação da versão de produção 
DROP DATABASE IF EXISTS primeiro;

-- Cria o banco de dados
-- Define a tabela de caracteres UTTF-8 (utf8mb4)

-- ----------------ATENÇÃO!----------------- --
-- Remova este comando após a publicação da versão de produção 
CREATE DATABASE primeiro
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_general_ci;

-- Definir o banco de dados com o qual vai trabalhar
USE primeiro;

-- Modela a tabela "employee"
CREATE TABLE employee (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(127) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    user_password VARCHAR(63) NOT NULL,
    user_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_status ENUM("on", "off", "del") DEFAULT "on"
);

-- Modela a tabela "contact"
CREATE TABLE contact (
    cont_id INT PRIMARY KEY AUTO_INCREMENT,
    cont_name  VARCHAR(127) NOT NULL,
    cont_email VARCHAR (255) NOT NULL,
    cont_subject VARCHAR(63),
    cont_message TEXT,
    cont_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cont_status ENUM("on", "off", "del") DEFAULT "on"
    
);


-- Inserindo alguns "employee" fake
INSERT INTO employee (
    user_name,
    user_email,
    user_password
) VALUES (
    "Joca da Silva",
    "joca@silva.com",
    SHA1("senha123")
), (
    "Stembrino Trocatapas",
    "set@brino.com",
    SHA1("senha123")
), (
    "Marineuza Siriliano",
    "mari@neuza.com",
    SHA1("senha123")
);

-- Inserindo alguns "contact" fake
INSERT INTO contact(
    cont_name,
    cont_email,
    cont_subject,
    cont_message
) VALUES (
    "Isaac Peres",
    "isaac@peres.com",
    "Estou precisando de ajuda!",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
), (
    "Matheus Duarte",
    "matheus@duarte.com",
    "Estou precisando de ajuda!",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
), (
    "Manu da Silva",
    "manu@silva.com",
    "Estou precisando de ajuda!",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
);