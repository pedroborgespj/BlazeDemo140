*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${titulo_secao_pagamento}    css=div.container h2
${txt_nome_passageiro}    id=inputName
${txt_endereco}    id=address
${txt_cidade}    id=city
${txt_estado}    id=state
${txt_cep}    id=zipCode
${txt_cartao_tipo}    css=div.controls select[name="cardType"]
${txt_cartao_numero}    id=creditCardNumber
${txt_cartao_mes}    id=creditCardMonth
${txt_cartao_ano}    id=creditCardYear
${txt_cartao_nome}    id=nameOnCard
${btn_purchase_flights}    css=input.btn.btn-primary

*** Keywords ***
Preencher nome do passageiro
    [Arguments]    ${nome_passageiro}
    Input Text    ${txt_nome_passageiro}    ${nome_passageiro}

Preencher endereco
    [Arguments]    ${endereco}
    Input Text    ${txt_endereco}    ${endereco}

Preencher cidade
    [Arguments]    ${cidade}
    Input Text    ${txt_cidade}    ${cidade}

Preencher estado
    [Arguments]    ${estado}
    Input Text    ${txt_estado}    ${estado}

Preencher cep
    [Arguments]    ${cep}
    Input Text    ${txt_cep}    ${cep}

Preencher tipo do cartao
    [Arguments]    ${cartao_tipo}
    Select From List By Value    ${txt_cartao_tipo}    ${cartao_tipo}

Preencher numero do cartao
    [Arguments]    ${cartao_numero}
    Input Text    ${txt_cartao_numero}    ${cartao_numero}

Preencher mes do cartao
    [Arguments]    ${cartao_mes}
    Input Text    ${txt_cartao_mes}    ${cartao_mes}

Preencher ano do cartao
    [Arguments]    ${cartao_ano}
    Input Text    ${txt_cartao_ano}    ${cartao_ano}

Preencher nome no cartao
    [Arguments]    ${cartao_nome}
    Input Text    ${txt_cartao_nome}    ${cartao_nome}

Clicar no botao Purchase Flight
    Click Element    ${btn_purchase_flights}