# encoding: utf-8

login_page = LoginPage.new

Dado("que eu esteja na tela de login no site BugBank") do
    login_page.load
end

Dado("eu informe no campo E-mail {string}") do |email|
    login_page.wait_until_campo_email_acessar_visible
    login_page.campo_email_acessar.set email
end

Dado("eu informe no campo Senha {string}") do |senha|
    login_page.campo_senha_acessar.set senha
end

Quando("eu clicar no botão Acessar") do
    login_page.botao_acessar.click
end

Então("para o cenário {int} deve ser apresentado a mensagem {string}") do |cenario, mensagem|
    sleep 3
    if cenario == 1
        expect(login_page.msg_obrig_campo_email_acessar.text).to have_content(mensagem)
        expect(login_page.msg_obrig_campo_senha_acessar.text).to have_content(mensagem)
    end

    if cenario == 2
        expect(login_page.msg_obrig_campo_email_acessar.text).to have_content(mensagem)
    end

    if cenario == 3
        expect(login_page.msg_obrig_campo_senha_acessar.text).to have_content(mensagem)
    end

    if cenario == 4
        login_page.wait_until_modal_usuario_senha_invalido_visible
        expect(login_page.msg_usuario_senha_invalido_modal.text).to have_content(mensagem)
    end
end