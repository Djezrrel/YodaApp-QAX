*** Settings ***


#passando caminho dos codigos reutilizavesi
Resource    ../resources/base.resource

*** Test Cases ***

Deve Remover o Darth vader

        Iniciando a sessão
        Começando a sessão
        Navegando nos      Star Wars
        Indo ao            Lista          Darth Vader


        #pegando a posiçã,exceto
        ${position}    Get Element Location    xpath=//android.widget.TextView[@text="@darthvader"]/../../..//*[contains(@resource-id,"indicator")]

    
       #Coodernada p/arrastar para o LADO
        #${start_x}        Set Variable    1010
        #${start_y}        Set Variable    660
        #${offset_x}       Set Variable    132 #cima
        #${offset_y}       Set Variable    673 #baixo

        ${start_x}        Set Variable    ${position}[x]
        ${start_y}        Set Variable    ${position}[y]
        ${offset_x}       Evaluate        ${position}[x] - 650
        ${offset_y}       Set Variable    ${position}[y]

        # Swipe    1010   660    132    673
        Swipe      ${start_x}   ${start_y}     ${offset_x}   ${offset_y} 

        Click Element    com.qaxperience.yodapp:id/btnRemove

        #Aguarda ate a pagina nao conter
        Wait Until Page Does Not Contain    Darth Vader 

        
       
        Encerando a aplicação

     