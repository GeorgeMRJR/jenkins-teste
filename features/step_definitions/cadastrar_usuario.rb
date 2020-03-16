Dado("que estou no site advantage online shopping") do
  home.load
end

Dado("nao estou logado") do
end

Quando("clico no icone de usuario") do
  home.clicar_usuario
end

Quando("clico no link de criar nova conta") do
  home.clicar_nova_conta
end

Quando("Digito o nome de usuario {string}") do |username_txt|
  @rand = Random.rand 0...10000
  puts username_txt + @rand.to_s
  cadastro.digitar_user_name(username_txt + @rand.to_s)
  base.rolar(250)
end

Quando("Digito a senha {string}") do |senha_txt|
  cadastro.digitar_senha(senha_txt)
end

Quando("Digito a comfirmacao da senha {string}") do |re_senha_txt|
  cadastro.digitar_re_senha(re_senha_txt)
end

Quando("Digito o email {string}") do |email_txt|
  cadastro.digitar_email(email_txt)
end

Quando("Digito o primeiro nome {string}") do |nome_txt|
  cadastro.digitar_nome(nome_txt)
end

Quando("Digito o sobre nome {string}") do |sobrenome_txt|
  cadastro.digitar_sobre_nome(sobrenome_txt)
end

Quando("Digito o telefone {string}") do |telefone_txt|
  cadastro.digitar_telefone(telefone_txt)
end

Quando("Seleciono o continente {string}") do |continente_txt|
  base.rolar(250)
  # cadastro.selecionar_continente(continente_txt)
end

Quando("Digito a cidade {string}") do |cidade_txt|
  cadastro.digitar_cidade(cidade_txt)
end

Quando("Digito o endereco {string}") do |endereco_txt|
  cadastro.digitar_endereco(endereco_txt)
end

Quando("Digito o estado {string}") do |estado_txt|
  cadastro.digitar_estado(estado_txt)
end

Quando("Digito o codigo postal {string}") do |cep_txt|
  cadastro.digitar_cep(cep_txt)
end

Quando("clico em aceito os termos de uso") do
  cadastro.aceitar_termos
end

Entao("o botao de registrar deve estar abilitado") do
end

Entao("clico no botao de registro") do
  # sleep 3
  cadastro.clicar_registar
end

Entao("o usuario estara cadastrado") do
  expect(page).to have_selector(".hi-user.containMiniTitle.ng-binding", visible: true)
end
