#language: pt
#utf-8

Funcionalidade: Manutencao de usuario
Eu como Administrador
Quero realizar manutencao no cadastro de usuarios
Para logar como admim

Cenario: Cadastrar um usuario
   Dado que eu abrir o site
 Quando realizar o cadastro de usuario
  Entao usuario cadastrado


Cenario: Realizar manutenção no cadastro de usuario
   Dado que eu abrir o site
 Quando realizar alteração de usuario
  Entao cadastro de usuario alterado
