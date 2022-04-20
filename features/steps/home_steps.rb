# encoding: utf-8

home_page = HomePage.new

Dado("que eu realize o login no site BugBank") do
  home_page.load

  home_page.botao_registrar.click
  home_page.wait_until_campo_email_registrar_visible
  home_page.campo_email_registrar.set "a.p@getnada.com"
  home_page.campo_nome.set "Ana Paula"
  home_page.campo_senha_registrar.set "!@#Mudar"
  home_page.campo_confirmacao_senha.set "!@#Mudar"
  home_page.botao_cadastrar.click

  home_page.wait_until_modal_conta_criada_sucesso_visible
  home_page.botao_fechar.click

  home_page.wait_until_campo_email_acessar_visible
  home_page.campo_email_acessar.set "a.p@getnada.com"
  home_page.campo_senha_acessar.set "!@#Mudar"
  home_page.botao_acessar.click
end

Quando("eu verificar a Home") do
  sleep 3
  expect(home_page.current_url).to include('home')
end

Então("deve ser apresentado o texto bem vindo ao BugBank") do
  expect(home_page.texto_bem_vindo).to have_content("bem vindo ao BugBank")
end