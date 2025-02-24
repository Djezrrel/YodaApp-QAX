*** Settings ***


#passando caminho dos codigos reutilizavesi
Resource    ../resources/base.resource

*** Test Cases ***



fazer Cadrasto

        Iniciando a sessão
        Começando a sessão
        Navegando nos      Formulários
        Indo ao            Cadastro          Crie sua conta.
        

        #colocando texto
        Input Text    id=com.qaxperience.yodapp:id/etUsername       DarkVader@qax.com
        Input Text    id=com.qaxperience.yodapp:id/etEmail          YediDoBem@gmail.com
        Input Text    id=com.qaxperience.yodapp:id/etPassword       Slas231@

        #Spiner
        Click Element    id=com.qaxperience.yodapp:id/spinnerJob
        #deixa o elemento aberto e inspeciona
        Wait Until Element Is Visible    class=android.widget.ListView
        #apertando a lista
        Click Text    Jedi

        Click Element    id=com.qaxperience.yodapp:id/btnSubmit
        Wait Until Page Contains     Tudo certo,


        Sleep    3
        Encerando a aplicação        