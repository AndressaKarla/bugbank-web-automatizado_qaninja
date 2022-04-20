require 'site_prism'

class HomePage < SitePrism::Page
    set_url ""

    element :botao_registrar, '#__next > div > div.pages__FormBackground-sc-1ee1f2s-2.jNpkvU > div > div.card__login > form > div.login__buttons > button.style__ContainerButton-sc-1wsixal-0.ihdmxA.button__child'
    element :campo_email_registrar, '#__next > div > div.pages__FormBackground-sc-1ee1f2s-2.jNpkvU > div > div.card__register > form > div:nth-child(2) > input'  
    element :campo_nome, '#__next > div > div.pages__FormBackground-sc-1ee1f2s-2.jNpkvU > div > div.card__register > form > div:nth-child(3) > input'
    element :campo_senha_registrar, '#__next > div > div.pages__FormBackground-sc-1ee1f2s-2.jNpkvU > div > div.card__register > form > div:nth-child(4) > div > input'
    element :campo_confirmacao_senha, '#__next > div > div.pages__FormBackground-sc-1ee1f2s-2.jNpkvU > div > div.card__register > form > div:nth-child(5) > div > input'
    element :botao_cadastrar, '#__next > div > div.pages__FormBackground-sc-1ee1f2s-2.jNpkvU > div > div.card__register > form > button'
    element :modal_conta_criada_sucesso, '#__next > div > div.styles__Container-sc-8zteav-0.eaPGNe > div > div.styles__ContainerInformations-sc-8zteav-3.fQkeSa'
    element :botao_fechar, '#btnCloseModal'

    element :campo_email_acessar, '#__next > div > div.pages__FormBackground-sc-1ee1f2s-2.jNpkvU > div > div.card__login > form > div.style__ContainerFieldInput-sc-s3e9ea-0.gQAEIG.input__child > input'
    element :campo_senha_acessar, '#__next > div > div.pages__FormBackground-sc-1ee1f2s-2.jNpkvU > div > div.card__login > form > div.login__password > div > input'
    element :botao_acessar, '#__next > div > div.pages__FormBackground-sc-1ee1f2s-2.jNpkvU > div > div.card__login > form > div.login__buttons > button.style__ContainerButton-sc-1wsixal-0.otUnI.button__child'

    element :texto_bem_vindo, '#__next > div > div.home__ContainerInformations-sc-1auj767-3.iVkSdN > div > div.home__ContainerText-sc-1auj767-7.iDA-Ddb > p:nth-child(2)'
end 