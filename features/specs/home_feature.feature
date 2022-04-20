# language: pt

@home_all
Funcionalidade: Home 
    Como um usuário do site BugBank
    Eu quero acessar a Home 
    Para que eu possa verificar as opções apresentadas

@home
Cenário: Verificar Home
	Dado que eu realize o login no site BugBank
	Quando eu verificar a Home
	Então deve ser apresentado o texto bem vindo ao BugBank 