# language: pt

@sair_all
Funcionalidade: Sair 
    Como um usuário do site BugBank
    Eu quero clicar na opção Sair
    Para que eu possa realizar o logoff

@sair
Cenário: Clicar na opção Sair
	Dado que eu realize o login no site BugBank
	Quando eu clicar na opção Sair
	Então deve ser apresentado a tela de login