

#Codigo Normal sem estar Organizado
# *** Settings ***

# Library  AppiumLibrary

# *** Variables ***
# ${start}    QAX

# *** Test Cases ***

# Apertando botao inicio

#     #Step 1 Iniciando a sessão
#     Open Application     http://localhost:4723
#     ...                  platformName=Android
#     ...                  deviceName=Pixel 8 API 31
#     ...                  automationName=UIAutomator2
#     ...                  platformVersion=12
#     ...                  udid=emulator-5554
#     ...                  autoGrantPermissions=true
#     ...                  app=${EXECDIR}/app/yodapp-beta.apk
    
#     #Step 2 Começando a sessão

#     #validar se tem a informação || Espera 5s

#     Wait Until Page Contains     ${start}       5

#     #cicla elemento pelo texto
#     Click Text     ${start}  
    
#     #Step 3 Navegando nos botões
      #Xpath criar variavel
#     ${MENUESQUERDA}    Set Variable      xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

#     # Esperar ate que um elemento fica visivel na tela
#     Wait Until Element Is Visible       ${MENUESQUERDA}      5
#     Click Element    ${MENUESQUERDA} 

#     #Menu de opções
#     ${MENUITENS}     Set Variable        xpath=//*[@resource-id="com.qaxperience.yodapp:id/rvNavigation"]//*[@text="Clique em Botões"]  
#     Click Element    ${MENUITENS} 


#     #Step 4 Indo ao Item

#     Wait Until Page Contains     Clique simples    5
#     Click Text                   Clique simples

#     #ver se na pagina tem
#     Wait Until Page Contains     Botão clique simples

#     #Step 5  Fazendo Ação com Item

#     Click Text                   CLIQUE SIMPLES

#     #pegando elemento que some da tela
#     Wait Until Page Contains     Isso é um clique simples
    
#     #esperar 5s quando termina teste basta tirar
#     #Sleep    5

#     #Step 6 Encerando o projeto
#     Close Application




# Codigo Organizado
#*** Settings ***


#Library  AppiumLibrary

# *** Variables ***
# ${start}    QAX

# *** Test Cases ***

# Apertando botao inicio

#         Iniciando a sessão
#         Começando a sessão
#         Navegando nos      Clique em Botões
#         Indo ao            Clique simples      Botão clique simples

#         Click Text                   CLIQUE SIMPLES
#         Wait Until Page Contains     Isso é um clique simples
#         Encerando a aplicação

# *** Keywords ***
# Iniciando a sessão
#     Open Application     http://localhost:4723
#     ...                  platformName=Android
#     ...                  deviceName=Pixel 8 API 31
#     ...                  automationName=UIAutomator2
#     ...                  platformVersion=12
#     ...                  udid=emulator-5554
#     ...                  autoGrantPermissions=true
#     ...                  app=${EXECDIR}/app/yodapp-beta.apk
    
# Começando a sessão

#     #validar se tem a informação || Espera 5s
#     Wait Until Page Contains     ${start}       5

#     #cicla elemento pelo texto
#     Click Text     ${start}  
    
# Navegando nos     

#     [Arguments]    ${botões-Navegar}
#     ${MENUESQUERDA}    Set Variable      xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

#     # Esperar ate que um elemento fica visivel na tela
#     Wait Until Element Is Visible       ${MENUESQUERDA}      5
#     Click Element    ${MENUESQUERDA} 

#     #Menu de opções
#     ${MENUITENS}     Set Variable        xpath=//*[@resource-id="com.qaxperience.yodapp:id/rvNavigation"]//*[@text="${botões-Navegar}"]  
#     Click Element    ${MENUITENS} 


# Indo ao
#     [Arguments]     ${ITEM}     ${Checkpoint}
#     Wait Until Page Contains     ${ITEM}    5
#     Click Text                   ${ITEM}
#     #ver se na pagina tem
#     Wait Until Page Contains     ${Checkpoint}

#     #esperar 5s quando termina teste basta tirar
#     #Sleep    5

# Encerando a aplicação
#     Close Application



#Codigo + Organizado
*** Settings ***


#passando caminho dos codigos reutilizavesi
Resource    ../resources/base.resource

*** Test Cases ***

Apertando botao inicio

        Iniciando a sessão
        Começando a sessão
        Navegando nos      Clique em Botões
        Indo ao            Clique simples      Botão clique simples

        Click Text                   CLIQUE SIMPLES
        Wait Until Page Contains     Isso é um clique simples
        Encerando a aplicação

Apertando Clique Longo

        [Tags]     long

        Iniciando a sessão
        Começando a sessão
        Navegando nos      Clique em Botões
        Indo ao            Clique longo      Botão clique longo



        #pegando id do elemento
        ${locator}    Set Variable    id=com.qaxperience.yodapp:id/long_click

       #pega as coodernadas onde elmento esta
        ${posicoes}     Get Element Location    ${locator} 

      
        # tempo que dura o toque e a coordenada
        #Tap With Positions    1000    ${567, 1185}
        Tap With Positions     1000    ${${posicoes}[x], ${posicoes}[y]}
        Wait Until Page Contains   Isso é um clique longo

        Encerando a aplicação


