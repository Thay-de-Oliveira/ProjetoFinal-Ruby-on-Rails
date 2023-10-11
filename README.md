# Cheat Sheet - Sistema de controle para atendimento in loco

Bem-vindos ao repositório do Sistema de controle para atendimentos in loco desenvolvido especialmente para suprir uma das maiores dores que a Defesa Civil enfrenta! Esse espaço contempla a documentação completa e o fonte para implantação do sistema!

## Introdução

O sistema "Defesa Civil - Você em alerta" foi desenvolvido para permitir maior organização, praticidade e otimização de tempo destes profissionais que atuam diretamente no suporte a vítimas de catástrofes e demais acontecimentos. 

### Especificações

O presente sistema foi desenvolvido com a linguagem Ruby e aplicado algumas Gems para melhor desempenho, também utilizamos o framework Rails para tornar o sistema mais robusto e escalável.

## Comandos utilizados

### Vagrant
vagrant up
Comando para iniciar a máquina virtual.

vagrant ssh
Comando para estabelecer uma conexão SSH direta na máquina virtual iniciada, permitindo acesso e execução da máquina virtual diretamente pelo shell utilizado (neste caso, estamos utilizando o Git Bash).

### Rails
Rails: Comando padrão para inicialização dos recursos do framework "rails";

rails new: Comando para criação de um novo projeto em Ruby.

rails s -b 0.0.0.0: Comando para executar o projeto web em Ruby no servidor de desenvolvimento com o endereço de IP específico.

#### Scaffold
rails generate scaffold ou rails g scaffold
generate scaffold: Comando para **criar um CRUD personalizado** no projeto, permitindo a criação completa da estrutura do sistema, incluindo modelos, controladores, visualizações, etc.

OBS: Ao rodar o comando Scaffold, precisamos declarar a Classe/Entidade (Model) e também os respectivos atributos.

#### Generators
rails generate ou rails g 
generate: Comando para **criar um CRUD genérico** no projeto, gerando apenas o básico para a estrutura do sistema, tendo a necessidade de criação de mais componentes individuais manualmente.

rails generate controller ou rails g controller
generate controller: Comando para **criar um controlador** no projeto, gerando uma estrutura base para tratar as solicitações.

rails destroy controller ou rails d controller
destroy controller: Comando para **excluir um controlador** do projeto, apagando todos os arquivos, dados, rotas, etc. vinculados ao controlador.

#### Tasks
Conjunto de comandos para execução para tarefas Rake personalizadas

rails db:create
db:create: Comando para **criar** um novo banco de dados vazio.

rails db:drop
db:drop: Comando para **excluir** um banco de dados completo.

rails db:migrate
db:migrate: Comando para executar a **migração** das atualizações pendentes no banco de dados.

rails db:rollback
db:rollback: Comando para **voltar para a última migração** realizada no banco de dados.

### Git
git init
Comando para **iniciar** um repositório no Git.

git clone
Comando para **clonar** um repositório Git existente na máquina local.

git add
Comando para **adicionar** arquivos ao Git.

git commit
Comando para **atualizar** as mudanças feitas nos arquivos no Git.

git branch
Comando para **listar** as ramificações/branches/mudanças existentes nos arquivos no Git.

git pull
Comando para **atualizar a branch** remotamente.

git push
Comando para **enviar as atualizações** para o repositório/projeto remoto.

