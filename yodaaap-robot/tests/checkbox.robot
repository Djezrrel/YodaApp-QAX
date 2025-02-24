*** Settings ***


#passando caminho dos codigos reutilizavesi
Resource    ../resources/base.resource

*** Test Cases ***

Selecionando checkbox

        Iniciando a sessão
        Começando a sessão
        Navegando nos      Check e Radio
        Indo ao            Checkbox           Marque as techs que usam Appium

        #criando uma lista com checkbox
        @{techs}    Create List     Ruby    Python    Java    Javascript    C#     Robot Framework

        #percore pela lista
        FOR    ${tech}    IN    @{techs}  

        Click Element                    xpath=//android.widget.CheckBox[contains(@text,"${tech}")]

        Sleep    1 

        END
        
        Sleep    3
        Encerando a aplicação