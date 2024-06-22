*** Settings ***
Library    SeleniumLibrary
Library    DateTime

Resource    confirmation_page.robot
Resource    home_page.robot
Resource    purchase_page.robot
Resource    reserve_page.robot

*** Variables ***
${timeout}    5000ms
${url}    https://www.blazedemo.com/
${browser}    Chrome
${date}

*** Keywords ***
Abrir Navegador
    Register Keyword To Run On Failure    Tirar Screenshot
    Open Browser    url=${url}    browser=${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    5000ms
    Wait Until Element Is Visible    css=div.jumbotron div.container h1    ${timeout}

Fechar Navegador
    Sleep    500ms
    Close Browser

Voltar para Home
    Click Element    css=a.brand[href="index.php"]
    Wait Until Element Is Visible    css=.jumbotron .container h1    ${timeout}

Obter data e hora
    ${date} =    Get Current Date
    ${date} =    Convert Date    ${date}    result_format=%Y.%m.%d_%H.%M.%S
    ${date}    Set Global Variable    ${date}

Tirar Screenshot
    [Arguments]    ${screenshot_name}
    Capture Page Screenshot    screenshots/${date}/${TEST_NAME}/${screenshot_name}.jpg