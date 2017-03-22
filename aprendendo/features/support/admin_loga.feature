#language: pt
#utf-8

Funcionalidade: Manutencao de usuario
Eu como Administrador
Quero realizar manutencao no cadastro de usuarios
Para logar como admim

Cenario: Cadastrar um usuario
Dado que eu abrir o site
E realizar o login com Admin
E selecionar para abrir a pagina para cadastrar um novo usuário
E realizar o cadastro de um novo usuario
E cadastro realizado
Entao Alterar cadastro de usuário

Cenario: Realizar manutenção no cadastro de usuario

Dado Logar para alterar o usuario
E login com Admin
E entrar no menu de alteracao
E selecionar o titulo da Profissao
E realizar a pesquisa
E entrar no cadastro do usuario 
E selecionar a opcao de editar o cadastro
Quando realizar alteracao no cadastro do funcionario
Entao salvar alteraca realizada
