# Projeto Metabase com MariaDB e Nginx usando Docker Compose

Este projeto permite executar o Metabase, uma ferramenta de análise e visualização de dados, juntamente com o MariaDB, um sistema de gerenciamento de banco de dados, e o Nginx, um servidor web e proxy reverso, usando o Docker Compose. O Metabase será executado como um serviço web acessível através do Nginx, que irá gerenciar o tráfego de rede e permitir o acesso ao Metabase através de um nome de domínio ou IP específico.

## Requisitos

- Docker
- Docker Compose

## Instruções de Uso

1. Clone este repositório para o seu ambiente local:

```
git clone https://github.com/bemn/metabase-mariadb.git
```

2. Navegue até o diretório do projeto:

```
cd metabase-mariadb
```

3. Edite o arquivo `docker-compose.yml` para configurar as variáveis de ambiente do banco de dados e outras configurações, se necessário:

```yaml
- MB_DB_TYPE=mysql
- MB_DB_DBNAME=${MB_DB_DBNAME}
- MB_DB_PORT=${MB_DB_PORT}
- MB_DB_USER=${MB_DB_USER}
- MB_DB_PASS=${MB_DB_PASS}
- MB_DB_HOST=mysql
```

4. Inicie os serviços do Metabase, MariaDB e Nginx:

```
docker-compose up -d
```

5. Aguarde alguns segundos para que os serviços sejam inicializados completamente.

6. Abra um navegador e acesse o Metabase em `http://localhost:3000`

7. Siga as instruções de configuração do Metabase para conectar-se ao banco de dados MariaDB e concluir o processo de instalação.

8. O Nginx irá encaminhar as solicitações HTTP e HTTPS para o Metabase.

## Personalização do Metabase e Nginx

- Se você deseja personalizar ainda mais o Metabase, consulte a [documentação oficial do Metabase](https://www.metabase.com/docs/latest/) para obter informações sobre configurações adicionais, temas, autenticação, entre outros.

- Se você deseja personalizar a configuração do Nginx, edite os arquivos de configuração localizados no diretório `./nginx/conf.d`. Certifique-se de ter conhecimento adequado em configuração do Nginx antes de fazer alterações.

## Gerenciamento dos Dados

Os dados do MariaDB serão armazenados no diretório `./data/mysql-data`. Certifique-se de ter as permissões adequadas para esse diretório para que o banco de dados funcione corretamente.

## Parar e Remover os Serviços

Para parar e remover os serviços do Metabase, MariaDB e Nginx, execute o seguinte comando no diretório do projeto:

```
docker-compose down
```

Isso irá parar e remover os containers e redes criadas para esses serviços.

## Notas

- Este projeto usa as imagens oficiais do Metabase, MariaDB e Nginx disponíveis no Docker Hub.

- O Metabase estará disponível na porta `3000` do host local. Certifique-se de que essa porta esteja disponível em seu sistema.

- O Nginx estará disponível nas portas `80` e `443` do host local. Certifique-se de que essas portas estejam disponíveis em seu sistema.

- Lembre-se de manter suas senhas seguras e não as compartilhe publicamente.

## Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE). Sinta-se livre para usar, modificar e distribuir o projeto de acordo com os termos da licença.
