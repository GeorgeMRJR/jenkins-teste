class Cadastro < SitePrism::Page
  set_url "/register"
  element :nome_usuario, "input[name='usernameRegisterPage']"
  element :email, "input[name='emailRegisterPage']"
  element :senha, "input[name='passwordRegisterPage']"
  element :re_senha, "input[name='confirm_passwordRegisterPage']"
  element :nome, "input[name='first_nameRegisterPage']"
  element :sobre_nome, "input[name='last_nameRegisterPage']"
  element :telefone, "input[name='phone_numberRegisterPage']"
  element :continente, "select[name='countryListboxRegisterPage']"
  element :cidade, "input[name='cityRegisterPage']"
  element :endereco, "input[name='addressRegisterPage']"
  element :cep, "input[name='postal_codeRegisterPage']"
  element :estado, "input[name='state_/_province_/_regionRegisterPage']"
  element :termos, "input[name='i_agree']"
  element :registrar, "#register_btnundefined"

  def digitar_user_name(username_txt)
    nome_usuario.set(username_txt)
  end

  def digitar_email(email_txt)
    email.set(email_txt)
  end

  def digitar_senha(senha_txt)
    senha.set(senha_txt)
  end

  def digitar_re_senha(re_senha_txt)
    re_senha.set(re_senha_txt)
  end

  def digitar_nome(nome_txt)
    nome.set(nome_txt)
  end

  def digitar_sobre_nome(sobre_nome_txt)
    sobre_nome.set(sobre_nome_txt)
  end

  def digitar_telefone(telefone_txt)
    telefone.set(telefone_txt)
  end

  def selecionar_continente(continente_txt)
    # continente.select(continente_txt)
    select("continente_txt", :from => continente)
  end

  def digitar_cidade(cidade_txt)
    cidade.set(cidade_txt)
  end

  def digitar_endereco(endereco_txt)
    endereco.set(endereco_txt)
  end

  def digitar_cep(cep_txt)
    cep.set(cep_txt)
  end

  def digitar_estado(estado_txt)
    estado.set(estado_txt)
  end

  def aceitar_termos
    termos.click
  end

  def clicar_registar
    # sleep 3
    registrar.click
    # sleep 3
  end
end
