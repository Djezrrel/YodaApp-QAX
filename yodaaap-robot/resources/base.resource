
## Reutilizavel para outros scripts


*** Settings ***

Library     AppiumLibrary

*** Variables ***
${start}    QAX


*** Keywords ***
Iniciando a sessão
    Open Application     http://localhost:4723
    ...                  platformName=Android
    ...                  deviceName=Pixel 8 API 31
    ...                  automationName=UIAutomator2
    ...                  platformVersion=12
    ...                  udid=emulator-5554
    ...                  autoGrantPermissions=true
    ...                  app=${EXECDIR}/app/yodapp-beta.apk
    
Começando a sessão

   
    Wait Until Page Contains     ${start}       5

    
    Click Text     ${start}  
    
Navegando nos     

    [Arguments]    ${botões-Navegar}
    ${MENUESQUERDA}    Set Variable      xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

   
    Wait Until Element Is Visible       ${MENUESQUERDA}      5
    Click Element    ${MENUESQUERDA} 

    
    ${MENUITENS}     Set Variable        xpath=//*[@resource-id="com.qaxperience.yodapp:id/rvNavigation"]//*[@text="${botões-Navegar}"]  
    Click Element    ${MENUITENS} 

Indo ao
    [Arguments]     ${ITEM}     ${Checkpoint}
    Wait Until Page Contains     ${ITEM}    5
    Click Text                   ${ITEM}
    Wait Until Page Contains     ${Checkpoint}

Encerando a aplicação
    Close Application