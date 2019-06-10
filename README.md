# README

## Executar

Para executar a aplicação. Recomendo o uso do docker-compose. (https://docs.docker.com/compose/install/)

Uma vez instalado, basta executar o comando:

```
docker-compose up
```

Para criar o banco e executar as migrations.

```
docker-compose run --rm web rails db:create db:migrate
```

## Rodar maintenance

Esta rake task é uma long running task para verificar os projetos que passaram de 48 horas e marcar estes como expirado. Para executá-lo basta executar o comando abaixo.

```
docker-compose run --rm web rails maintenance:maintenance
```
