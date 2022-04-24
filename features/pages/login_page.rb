require 'site_prism'

class LoginPage < SitePrism::Page
    set_url ""

    element :campo_email_acessar, '#__next > div > div.pages__FormBackground-sc-1ee1f2s-2.jNpkvU > div > div.card__login > form > div.style__ContainerFieldInput-sc-s3e9ea-0.gQAEIG.input__child > input'
    element :campo_senha_acessar, '#__next > div > div.pages__FormBackground-sc-1ee1f2s-2.jNpkvU > div > div.card__login > form > div.login__password > div > input'
    element :botao_acessar, '#__next > div > div.pages__FormBackground-sc-1ee1f2s-2.jNpkvU > div > div.card__login > form > div.login__buttons > button.style__ContainerButton-sc-1wsixal-0.otUnI.button__child'
    element :msg_obrig_campo_email_acessar, '#__next > div > div.pages__FormBackground-sc-1ee1f2s-2.jNpkvU > div > div.card__login > form > div.style__ContainerFieldInput-sc-s3e9ea-0.kOeYBn.input__child > p'
    element :msg_obrig_campo_senha_acessar, '#__next > div > div.pages__FormBackground-sc-1ee1f2s-2.jNpkvU > div > div.card__login > form > div.login__password > div > p'

    element :modal_usuario_senha_invalido, '#__next > div > div.styles__Container-sc-8zteav-0.eaPGNe > div'
    element :msg_usuario_senha_invalido_modal, '#modalText'
end 