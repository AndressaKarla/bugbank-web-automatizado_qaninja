# language: pt

@login_all
Funcionalidade: Login
    Como um usuário do site BugBank
    Eu quero acessar a tela de login 
    Para que eu possa verificar os cenários

@login
Esquema do Cenário: Tentar realizar login com email e ou senha inválidos 
    Dado que eu esteja na tela de login no site BugBank
    E eu informe no campo E-mail <email>
    E eu informe no campo Senha <senha>
    Quando eu clicar no botão Acessar
    Então para o cenário <cenario> deve ser apresentado a mensagem <mensagem> 

    Exemplos:
        | cenario   |   email                 |  senha      | mensagem                                                                      | 
        |    1      |    ""                   |    ""       |  "É campo obrigatório"                                                        | 
        |    2      |    ""                   | "!@#Mudar"  |  "É campo obrigatório"                                                        | 
        |    3      |   "teste1@gmail.com"    |     ""      |  "É campo obrigatório"                                                        | 
        |    4      |   "teste2@outlook.com"  | "!@#Mudar"  |  "Usuário ou senha inválido. Tente novamente ou verifique suas informações!"  |