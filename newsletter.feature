Feature: Newsletter

Fuctionality: Register Newsletter "O Globo"
  I being or not being a client
  I can choose editions of my preference 
  To receive free Globo content directly in my email


  Scenario: User should be able to select one option for newsletter
    Given I am on newsletter page
     When I select one the editing options 
      And I enter my email address
      And I confirm my email address
      And I enter image characters
      And I click on button "Inscreva-se"
     Then I see message "Quase pronto...Acesse sua caixa de e-mail e confirme sua inscrição para começar a receber nossa newsletter."

  Scenario: User should be able to select more the one option for newsletter
    Given I am on newsletter page
     When I select two the editing options 
      And I enter my email address
      And I confirm my email address
      And I enter image characters
      And I click on button "Inscreva-se"
     Then I see message "Quase pronto...Acesse sua caixa de e-mail e confirme sua inscrição para começar a receber nossa newsletter."

  Scenario: User should be able to select all option for newsletter
    Given I am on newsletter page
     When I select all the editing options 
      And I enter my email address
      And I confirm my email address
      And I enter image characters
      And I click on button "Inscreva-se"
     Then I see message "Quase pronto...Acesse sua caixa de e-mail e confirme sua inscrição para começar a receber nossa newsletter."

  Scenario: User should see error message when email confirmation is different from registered email
    Given I am on newsletter page
     When I select one the editing options
      And I enter my email address
      And I confirm my email address with different information 
      And I enter image characters
      And I click on button "Inscreva-se"
     Then I see message "Verifique se preencheu corretamente os campos acima."

  Scenario: User should see error message when entering invalid email
    Given I am on newsletter page
     When I select one the editing options
      And I enter with invalid email address
      And I confirm my email address
      And I enter image characters
      And I click on button "Inscreva-se"
     Then I see message "Verifique se preencheu corretamente os campos acima."

  Scenario: User should see error message when do not entering your email address
    Given I am on newsletter page
     When I select one the editing options
      And I confirm my email address
      And I enter image characters
      And I click on button "Inscreva-se"
     Then I see message "Verifique se preencheu corretamente os campos acima."

  Scenario: User should see error message when do not confirm email
    Given I am on newsletter page
     When I select one the editing options
      And I enter with invalid email address
      And I enter image characters
      And I click on button "Inscreva-se"
     Then I see message "Verifique se preencheu corretamente os campos acima."

    Scenario: User should see error message when do not entering image characters
    Given I am on newsletter page
     When I select one the editing options
      And I enter with invalid email address
      And I confirm my email address
      And I click on button "Inscreva-se"
     Then I see message "Texto não correponde à imagem"

    Scenario: User should see error message when entering invalid image characters
    Given I am on newsletter page
     When I select one the editing options
      And I enter with invalid email address
      And I confirm my email address
      And I enter with invalid image characters
      And I click on button "Inscreva-se"
     Then I see message "Texto não correponde à imagem"

    Scenario: User should see error message when do not select at least one option for newsletter
    Given I am on newsletter page
     When I enter with invalid email address
      And I confirm my email address
      And I enter image characters
      And I click on button "Inscreva-se"
     Then I see message "Escolha ao menos uma das opções acima."

  Scenario: User should get new characters in the image when click the link "trocar imagem"
    Given I am on newsletter page
     When I click on the link "trocar image"
     Then I see new characters in the image
