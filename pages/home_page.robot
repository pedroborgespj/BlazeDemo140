*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${txt_origem}    css=div.container select[name="fromPort"]
${txt_destino}    css=div.container select[name="toPort"]
${btn_find_flights}    css=input.btn.btn-primary

*** Keywords ***
Selecionar Origem
    [Arguments]    ${origem}
    Select From List By Value    ${txt_origem}    ${origem}

Selecionar Destino
    [Arguments]    ${destino}
    Select From List By Value    ${txt_destino}    ${destino}

Clicar no botao Find Flights
    Click Element    ${btn_find_flights}