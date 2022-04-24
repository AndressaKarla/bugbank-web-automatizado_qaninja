# encoding: utf-8

sair_page = SairPage.new

Quando("eu clicar na opção Sair") do
  sleep 3
  sair_page.botao_sair.click
end

Então("deve ser apresentado a tela de login") do
  sair_page.wait_until_texto_banco_bugs_falhas_visible
  expect(sair_page.texto_banco_bugs_falhas).to have_content("O banco com bugs e falhas do seu jeitoo")
end