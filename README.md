# Django: TO DO LIST com AJAX

## 📝 Descrição do Projeto

Este tutorial apresenta o desenvolvimento de uma *To Do List* utilizando Django e AJAX. Aprenda a criar um sistema dinâmico e eficiente, explorando os recursos do Django para o backend e o AJAX para uma experiência de usuário mais interativa.


## ⚙️ Modelagem do Projeto

O projeto consiste em duas tabelas principais:

1. **TodoList**:

   - Armazena as tarefas a serem gerenciadas.
   - Contém um campo *ForeignKey* relacionado à tabela **Status**.
2. **Status**:

   - Define os diferentes estados que uma tarefa pode assumir:
     - ⛔️ A Fazer
     - ⚠️ Fazendo
     - ✅ Finalizado
   - Esta tabela permite que o usuário customize os status disponíveis.

> Observação: Na tabela **TodoList**, o campo de *ForeignKey* para **Status** é configurado com `to_field='id', default='1'`. Isso significa que o status padrão será o item de ID=1, garantindo que os formulários gerados tenham um valor inicial para o campo *status*.

---

## 📋 Pré-requisitos

Certifique-se de que sua máquina possui os seguintes requisitos instalados:

- Python (python==3.*)
- Django (Django==4.2)
- Pip (gerenciador de pacotes do Python)

---

## 🚀 Tecnologias Utilizadas

- **Backend**: Django
- **Frontend**: HTML, CSS, Bootstrap
- **Dinamicidade**: AJAX

---

## 🌟 Funcionalidades

- **Adicionar Tarefas**: Crie novas tarefas com status personalizado.
- **Atualizar Tarefas**: Edite detalhes das tarefas ou altere seu status.
- **Excluir Tarefas**: Remova tarefas concluídas ou indesejadas.
- **Status Dinâmico**: Personalize os estados das tarefas diretamente na tabela **Status**.
- **Interatividade**: AJAX permite atualizações em tempo real, sem necessidade de recarregar a página.

