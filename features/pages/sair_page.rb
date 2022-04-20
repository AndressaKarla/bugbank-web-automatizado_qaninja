require 'site_prism'

class SairPage < SitePrism::Page
    set_url ""

    element :botao_sair, '#btnExit'
    element :texto_banco_bugs_falhas, '#__next > div > div.pages__TitleBackground-sc-1ee1f2s-1.dEBVGQ > h1'
end 