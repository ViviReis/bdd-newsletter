Feature: Signature

Fuctionality: Sign "O Globo"
  I being or not being a client
  I can choose between two signature options


  Scenario: User should be able to register for to sign "O Globo Digital Light"
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital Light"
      And I click on link "Cadastre-se"
      And I fill in "Nome" with "Viviane"
      And I fill in "E-mail" with "viviane@teste.com"
      And I fill in "Senha" with "123456789"
      And I fill in "CPF" with "253.163.314-60"
      And I fill in "Telefone" with "1127154152"
      And I security check
      And I check terms of use
      And I click on button "Cadastrar"
     Then I see payment page

  Scenario: User should be able to sign "O Globo Digital Light" entering with your globo.com login
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital Light"
      And I fill in "Email" with "viviane@teste.com"
      And I fill in "Senha" with "123456789"
      And I click on button "Entrar"
     Then I see payment page

  Scenario: User should be able to sign "O Globo Digital Light" entering with your facebook account
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital Light"
      And I click on button "Entre com o Facebook"
      And I fill in "E-mail" with "viviane@teste.com"
      And I fill in "Senha" with "123456789"
     Then I see payment page

  Scenario: User should be able to register for to sign "O Globo Digital"
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital"
      And I click on link "Cadastre-se"
      And I fill in "Nome" with "Viviane"
      And I fill in "E-mail" with "viviane2@teste.com"
      And I fill in "Senha" with "123456789"
      And I fill in "CPF" with "852.741.345-05"
      And I fill in "Telefone" with "1127154152"
      And I security check
      And I check terms of use
      And I click on button "Cadastrar"
     Then I see payment page

  Scenario: User should be able to sign "O Globo Digital" entering with your globo.com login
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital"
      And I fill in "Email" with "viviane@teste.com"
      And I fill in "Senha" with "123456789"
      And I click on button "Entrar"
     Then I see payment page

  Scenario: User should be able to sign "O Globo Digital" entering with your facebook account
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital"
      And I click on button "Entre com o Facebook"
      And I fill in "E-mail" with "viviane@teste.com"
      And I fill in "Senha" with "123456789"
     Then I see payment pag

  Scenario: User should see error message when do not entering Email and Password
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital"
      And I fill in "Email" with ""
      And I fill in "Senha" with ""
      And I click on button "Entrar"
     Then I see message "Preencha seu usuário e senha."

  Scenario: User should see error message when entering incorrect Email
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital"
      And I fill in "Email" with "blabla123@blabla.com"
      And I fill in "Senha" with "123456789"
      And I click on button "Entrar"
     Then I see message "Seu usuário ou senha estão incorretos."

Scenario: User should see error message when entering incorrect Password 
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital"
      And I fill in "Email" with "viviane@teste.com"
      And I fill in "Senha" with "1234567qa"
      And I click on button "Entrar"
     Then I see message "Seu usuário ou senha estão incorretos."

  Scenario: User should be able to recover password by entering registered email to sign "O Globo"
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital"
      And I click on "Esqueceu a senha"
      And I fill in "Email" with "viviane@teste.com"
      And I check terms of use
      And I click on button "Enviar"
     Then I see message "Enviamos um e-mail com instruções para a criação de uma nova senha para: 
                         vi***@teste.com Ainda não recebeu o e-mail? 
                         Preencha a verificação de segurança, e depois solicite o reenvio do e-mail no botão abaixo:"

  Scenario: User should be able request email resubmit for password recovery
    Given I am on newsletter page
  	 When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital"
      And I am on the password recovery page
      And I security check
      And I click on button "Reenviar E-mail"
     Then I see message "Enviamos um novo e-mail! Se o problema continuar, verifique sua caixa de spam."  

  Scenario: User must be able to recover the password, informing not registered email to sign "O Globo"
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital"
      And I click on "Esqueceu a senha"
      And I fill in "Email" with "blabla123@blabla.com"
      And I check terms of use
      And I click on button "Enviar"
     Then I see message "Confira se o campo foi digitado corretamente."

  Scenario: User should not be able to register to sign "O Globo" when leaving fields blank
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital Light"
      And I click on link "Cadastre-se"
      And I fill in "Nome" with ""
      And I fill in "E-mail" with ""
      And I fill in "Senha" with ""
      And I fill in "CPF" with ""
      And I fill in "Telefone" with ""
      And I security check
      And I check terms of use
      And I click on button "Cadastrar"
     Then I see erro message

  Scenario: User should not be able to register to sign O Globo when informing email already registered
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital Light"
      And I click on link "Cadastre-se"
      And I fill in "Nome" with "Viviane"
      And I fill in "E-mail" with "viviane@teste.com"
      And I fill in "Senha" with "123456789"
      And I fill in "CPF" with "348.171.697-45"
      And I fill in "Telefone" with "1127154152"
      And I security check
      And I check terms of use
      And I click on button "Cadastrar"
     Then I see message "Ops! Esse e-mail já está em uso."

  Scenario: User should not be able to register to sign O Globo when informing invalid email
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital Light"
      And I click on link "Cadastre-se"	
      And I fill in "Nome" with "Viviane"
      And I fill in "E-mail" with "viviane3.com"
      And I fill in "Senha" with "123456789"
      And I fill in "CPF" with "306.865.453-03"
      And I fill in "Telefone" with "1127154152"
      And I security check
      And I check terms of use
      And I click on button "Cadastrar"
     Then I see message "Verifique se seu e-mail está escrito corretamente"

  Scenario: User should not be able to register to sign O Globo when informing invalid CPF
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital Light"
      And I click on link "Cadastre-se"	
      And I fill in "Nome" with "Viviane"
      And I fill in "E-mail" with "viviane4@teste.com"
      And I fill in "Senha" with "123456789"
      And I fill in "CPF" with "000.000.000-00"
      And I fill in "Telefone" with "1127154152"
      And I security check
      And I check terms of use
      And I click on button "Cadastrar"
     Then I see message "CPF inválido"

  Scenario: User should not be able to register to sign O Globo when informing invalid Telefone
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital Light"
      And I click on link "Cadastre-se"	
      And I fill in "Nome" with "Viviane"
      And I fill in "E-mail" with "viviane5@teste.com"
      And I fill in "Senha" with "123456789"
      And I fill in "CPF" with "645.777.452-08"
      And I fill in "Telefone" with "1127154152"
      And I security check
      And I check terms of use
      And I click on button "Cadastrar"
     Then I see message "O telefone informado não é um número válido. Por favor, insira outro telefone."

  Scenario: User should see error message when entering password less than 8 characters
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital Light"
      And I click on link "Cadastre-se"	
      And I fill in "Nome" with "Viviane"
      And I fill in "E-mail" with "viviane6@teste.com"
      And I fill in "Senha" with "1234567"
      And I fill in "CPF" with "012.122.468-61"
      And I fill in "Telefone" with "1127154152"
      And I security check
      And I check terms of use
      And I click on button "Cadastrar"
     Then I see message "A senha deve ter pelo menos 8 caracteres."

  Scenario: User should see error message when not performing security check
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital Light"
      And I click on link "Cadastre-se"	
      And I fill in "Nome" with "Viviane"
      And I fill in "E-mail" with "viviane7@teste.com"
      And I fill in "Senha" with "123456789"
      And I fill in "CPF" with "761.877.175-89"
      And I fill in "Telefone" with "1127154152"
      And I check terms of use
      And I click on button "Cadastrar"
     Then I see message "A verificação expirou. Marque a caixa de seleção novamente."

  Scenario: User should see error message when not accept terms of use
    Given I am on newsletter page
     When I click on sign "O Globo"
      And I click on button "Assine agora" for "O Globo Digital Light"
      And I click on link "Cadastre-se"	
      And I fill in "Nome" with "Viviane"
      And I fill in "E-mail" with "viviane7@teste.com"
      And I fill in "Senha" with "1234567"
      And I fill in "CPF" with "221.167.766-51"
      And I fill in "Telefone" with "1127154152"
      And I security check
      And I check terms of use
      And I click on button "Cadastrar"
     Then I see message "Você precisa concordar com os Termos de Uso e Política de Privacidade."