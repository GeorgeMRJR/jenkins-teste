class Home < SitePrism::Page
  set_url "/"
  element :icone_usuario, "#menuUserLink"
  element :criar_nova_conta, ".create-new-account.ng-scope"

  def clicar_usuario
    icone_usuario.click
  end

  def clicar_nova_conta
    criar_nova_conta.send_keys :enter
  end
end
