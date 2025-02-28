## Biblioteca Digital Interativa

### Introdução

Este projeto é uma aplicação interativa em Ruby que permite ao usuário inserir seu nome, sobrenome e idade para receber recomendações de livros personalizadas. 

Além disso, o programa fornece links para mais informações sobre cada livro e permite que o usuário abra esses links diretamente no navegador.

---

### Tecnologias Utilizadas
- Ruby (linguagem principal)
- Biblioteca URI (manipulação de URLs)

---

### Comandos do sistema (system) para abrir URLs no navegador

Como Funciona?

**1. Solicitação de Dados do Usuário**

**O programa solicita ao usuário que insira:**

- Nome
- Sobrenome
- Idade

O nome e o sobrenome são formatados corretamente (capitalização de cada palavra).

A idade é armazenada para categorizar o usuário e recomendar livros apropriados.

---

**2. Recomendando Livros**

**Com base na idade informada, o programa recomenda livros nas seguintes categorias:**

- Infantil (até 12 anos)
    - O Pequeno Príncipe
    - Alice no País das Maravilhas
    - O Menino Maluquinho

- Juvenil (13 a 18 anos)
    - Harry Potter e a Pedra Filosofal
    - Percy Jackson e o Ladrão de Raios
    - A Culpa é das Estrelas

- Adulto (19 anos ou mais)
    - 1984 – George Orwell
    - Dom Casmurro – Machado de Assis
    - O Código Da Vinci – Dan Brown

---

**3. Exibição das Recomendações**

**A lista de livros é apresentada com links para mais informações.**

- O usuário pode escolher um livro digitando seu número correspondente.

- O programa tenta abrir o link no navegador padrão do sistema operacional.

---

### Requisitos de Sistema

- Ruby instalado (versão 2.7+ recomendada)

**Sistema Operacional compatível:**

- Windows (usa start para abrir URLs)

- Linux (usa xdg-open para abrir URLs)

- macOS (usa open para abrir URLs)

**Como Executar**

- Instale o Ruby, caso ainda não tenha instalado.

- Salve o código em um arquivo chamado app.rb.

- Abra o terminal ou prompt de comando e execute:

``` ruby
ruby app.rb
```

1. Responda as perguntas conforme solicitado.

2. Escolha um livro para abrir a página de mais informações.

---

### Possíveis Melhorias

- Interface Gráfica: Criar uma interface mais amigável com Ruby on Rails ou uma aplicação desktop.

- Banco de Dados: Armazenar histórico de usuários e suas preferências.

- Integração com APIs: Buscar livros de fontes como Google Books ou Open Library.

---

### Conclusão

Este projeto é um exemplo simples e funcional de interação com o usuário em Ruby, utilizando entrada de dados, manipulação de strings e interação com o navegador para exibir informações sobre livros recomendados.

