*** Settings ***


#passando caminho dos codigos reutilizavesi
Resource    ../resources/base.resource

*** Test Cases ***

Deve faze login

        Iniciando a sessão
        Começando a sessão
        Navegando nos      Formulários
        Indo ao            Login          Olá Padawan,

        #colocando texto
        Input Text    id=com.qaxperience.yodapp:id/etEmail       yoda@qax.com
        Input Text    id=com.qaxperience.yodapp:id/etPassword    jedi

        Click Element     id=com.qaxperience.yodapp:id/btnSubmit

        Wait Until Page Contains    Boas vindas, logado você está.

        Sleep    3
        Encerando a aplicação


Não Deve faze login

        Iniciando a sessão
        Começando a sessão
        Navegando nos      Formulários
        Indo ao            Login          Olá Padawan,

        #colocando texto
        Input Text    id=com.qaxperience.yodapp:id/etEmail       yoda@qax.com
        Input Text    id=com.qaxperience.yodapp:id/etPassword    Yedi

        Click Element     id=com.qaxperience.yodapp:id/btnSubmit

        Wait Until Page Contains    Oops! Credenciais incorretas.

        Sleep    3
        Encerando a aplicação        