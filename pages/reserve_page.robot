*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${titulo_secao_reserva}    css=div.container h3

*** Keywords ***
Clicar no voo escolhido
    Click Element    css=tr:nth-child(2) .btn