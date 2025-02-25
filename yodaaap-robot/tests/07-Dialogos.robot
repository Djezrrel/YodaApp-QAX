*** Settings ***


#passando caminho dos codigos reutilizavesi
Resource    ../resources/base.resource

*** Test Cases ***

Selecionando RadioBox

        Iniciando a sessão
        Começando a sessão
        Navegando nos      Dialogs
        Indo ao            Info          Mestre Yoda

        Click Element        com.qaxperience.yodapp:id/dialogInfoOk
        Sleep    3
        Encerando a aplicação