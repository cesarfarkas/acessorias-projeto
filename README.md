# Acessorias Projeto

Este projeto foi desenvolvido como parte de um teste para a empresa **Acessorias** (acessorias.com.br). Ele é uma aplicação PHP que utiliza um banco de dados MySQL. 

## Instalação

1. **Clone o repositório**:
   Clone este repositório na pasta onde o servidor PHP será executado:
   ```bash
   git clone https://github.com/cesarfarkas/acessorias-projeto.git
   cd acessorias-projeto

2. Importe o banco de dados: Importe o arquivo database.sql localizado no diretório raiz do projeto para o seu banco de dados MySQL.

3. Configuração do ambiente: Alterar o arquivo .env com as configurações de seu banco de dados (como nome do banco, usuário e senha).

4. Atualize as dependências do Composer: Execute o comando abaixo para instalar ou atualizar as dependências PHP:
    ```bash
    composer install
    
5. Execute o projeto: Para rodar o projeto, execute o servidor PHP apontando para o diretório public:
   ```bash
    php -S localhost:8000 -t public
   
6. Acesse o projeto: Abra o navegador e acesse http://localhost:8000.

## Estrutura de Pastas

Abaixo está a estrutura de diretórios do projeto:
/acessorias-projeto
├── public/
│   └── index.php
├── src/
├── config/
├── database.sql
├── .env
└── composer.json

## Comandos importantes
- Para atualizar os arquivos do projeto, execute:
   ```bash
    git pull origin main

- Caso precise instalar dependências adicionais, use:
   ```bash
   composer update

## Tecnologias utilizadas

    PHP para o backend
    JavaScript pra o frontend
    HTML/CSS para o frontend
    MySQL para o banco de dados

## Contribuições

Sinta-se à vontade para fazer um fork deste repositório, enviar pull requests ou sugerir melhorias.

Projeto desenvolvido por Cesar Farkas.

Esse README agora inclui os passos corretos para rodar o projeto, a estrutura de pastas e as instruções detalhadas de instalação.
