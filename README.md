# MyRottenPotatoes - Relatório de Implementação

## Resumo do Projeto

Implementei uma aplicação web simples para gerenciar filmes usando Ruby on Rails, seguindo as orientações do Capítulo 4 do livro "Engineering Software as a Service". A aplicação permite listar, visualizar e criar filmes de forma básica.

## O que foi Implementado

### 1. Estrutura MVC Básica

**Model (Modelo)**
- `Movie`: Representa um filme no banco de dados
- Validação: título obrigatório
- Campos: title (título) e rating (classificação)

**Controller (Controlador)**
- `MoviesController`: Gerencia as ações dos filmes
- Ações implementadas:
  - `index`: Lista todos os filmes
  - `show`: Mostra detalhes de um filme
  - `new`: Formulário para novo filme
  - `create`: Salva novo filme no banco

**Views (Visões)**
- Layout principal simples
- Página de listagem com tabela
- Página de detalhes do filme
- Formulário para criar novo filme

### 2. Banco de Dados

**Migration (Migração)**
- Tabela `movies` com campos:
  - `title` (string): título do filme
  - `rating` (string): classificação
  - `description` (text): descrição
  - `release_date` (date): data de lançamento
  - timestamps automáticos

### 3. Rotas

```ruby
Rails.application.routes.draw do
  root 'movies#index'
  resources :movies
end
```

## Arquivos Principais Criados

```
myrottenpotatoes/
├── app/
│   ├── controllers/
│   │   ├── application_controller.rb
│   │   └── movies_controller.rb
│   ├── models/
│   │   └── movie.rb
│   └── views/
│       ├── layouts/application.html.erb
│       └── movies/
│           ├── index.html.erb
│           ├── show.html.erb
│           └── new.html.erb
├── config/routes.rb
├── db/migrate/001_create_movies.rb
└── Gemfile
```

## Funcionalidades

1. **Listar Filmes**: Página inicial mostra todos os filmes em tabela
2. **Ver Detalhes**: Clique em "Ver" para ver informações do filme
3. **Criar Filme**: Link "Novo Filme" abre formulário simples
4. **Navegação**: Links para voltar entre páginas

## Conceitos Rails Demonstrados

- **Padrão MVC**: Separação clara de responsabilidades
- **ActiveRecord**: ORM para banco de dados
- **Rotas RESTful**: Convenções de URLs
- **ERB Templates**: Views dinâmicas
- **Form Helpers**: Formulários Rails
- **Validações**: Regras de negócio no modelo

## Como Funciona

1. **Usuário acessa a página**: Rails roteia para `MoviesController#index`
2. **Controller busca dados**: `@filmes = Movie.all`
3. **View renderiza**: Lista filmes em tabela HTML
4. **Usuário clica "Novo Filme"**: Vai para formulário
5. **Usuário preenche e salva**: Controller cria registro no banco
6. **Redirecionamento**: Volta para lista atualizada

## Tecnologias Utilizadas

- **Ruby on Rails**: Framework web
- **SQLite**: Banco de dados (padrão Rails)
- **ERB**: Template engine
- **HTML**: Interface básica

## Conclusão

A aplicação demonstra os fundamentos do Rails de forma simples e direta:
- Como estruturar uma aplicação MVC
- Como criar modelos com validações
- Como implementar controllers básicos
- Como criar views funcionais
- Como configurar rotas RESTful

Este é um exemplo prático dos conceitos apresentados no Capítulo 4 do livro SaaS, mostrando como Rails facilita o desenvolvimento web seguindo convenções estabelecidas.