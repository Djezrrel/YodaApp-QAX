*** Settings ***


#passando caminho dos codigos reutilizavesi
Resource    ../resources/base.resource

*** Test Cases ***

Selecionando RadioBox

        Iniciando a sessão
        Começando a sessão
        Navegando nos      Check e Radio
        Indo ao            Botões de radio           Escolha sua linguagem preferida

        Click Element        xpath=//android.widget.RadioButton[contains(@text, "Python")]
        Sleep    3
        Encerando a aplicação