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

# Estrutura de Pastas do Projeto

Este projeto é organizado da seguinte maneira:

## Raiz do Projeto

- `.env`: Arquivo de configuração de ambiente.
- `app.php`: Arquivo principal da aplicação.
- `composer.json`: Arquivo de configuração do Composer.
- `composer.lock`: Arquivo de bloqueio de dependências do Composer.
- `database.sql`: Arquivo de banco de dados.

## Diretórios

### `app/`
Contém a lógica principal da aplicação, como controladores, modelos e visualizações.

- **Controllers/**
    - `ClientController.php`: Controlador de clientes.
- **Models/**
    - `Client.php`: Modelo para clientes.
- **Views/**
    - `clients.php`: Visão para exibir informações dos clientes.

### `config/`
Contém arquivos de configuração da aplicação.

- `database.php`: Arquivo de configuração do banco de dados.

### `public/`
Contém arquivos acessíveis ao público, como a página inicial e os arquivos de estilo.

- `index.php`: Arquivo principal da aplicação pública.
- `styles.css`: Arquivo de estilos CSS.
- `theme.js`: Arquivo de JavaScript para o tema.

### `vendor/`
Contém bibliotecas externas e autoloaders gerenciados pelo Composer.

- `autoload.php`: Arquivo de autoload principal.
- **composer/**
    - `autoload_classmap.php`: Mapeamento de classes.
    - `autoload_files.php`: Arquivo de autoload de arquivos.
    - `autoload_namespaces.php`: Autoload de namespaces.
    - `autoload_psr4.php`: Autoload de classes PSR-4.
    - `autoload_real.php`: Lógica de autoload real.
    - `autoload_static.php`: Autoload estático.
    - `ClassLoader.php`: Classe responsável pelo carregamento de classes.
    - `installed.json`: Arquivo JSON de pacotes instalados.
    - `installed.php`: Arquivo PHP de pacotes instalados.
    - `InstalledVersions.php`: Versões dos pacotes instalados.
- **graham-campbell/**: Dependência de pacotes de Graham Campbell.
- **phpoption/**: Dependência de pacotes PHPOption.
- **symfony/**: Dependência de pacotes Symfony.
- **vlucas/**: Dependência de pacotes de VLuca.


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
