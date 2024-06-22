*** Settings ***
Resource    ../pages/base_page.robot
Test Template    Comprar Passagem

*** Test Cases ***
TC001    Paris    Rome    Francisca Rafaela Mendes    Rua José da Costa Júnior    Campo Grande    MS    79092-610    visa    28637337619    05    2026    Francisca R. Mendes
TC002    Philadelphia    London    Giovana Pietra Maria Drumond    Rua LBA    Rio Branco    AC    69915-270    amex    12337337619    04    2025    Giovana P. M. Drumond
TC003    Boston    Berlin    Nelson Ryan Drumond    Rua Mico leão    Foz do Iguaçu    PR    85861-340    visa    43237337620    03    2027    Nelson R. Drumond
TC004    Portland    Dublin    Marli Lucia Moraes    Rua Maria Pereira Valério    Divinópolis    MG    35502-240    amex    28131237619    10    2026    Marli L. Moraes

*** Keywords ***
Comprar Passagem
    [Arguments]    ${origem}    ${destino}    ${nome_passageiro}    ${endereco}    ${cidade}    ${estado}    ${cep}    ${cartao_tipo}    ${cartao_numero}    ${cartao_mes}    ${cartao_ano}    ${cartao_nome}
    Tirar Screenshot    1-Home
    Selecionar Origem    ${origem}
    Selecionar Destino    ${destino}
    Tirar Screenshot    2-Voos Selecionados
    Clicar no botao Find Flights
    Element Text Should Be    ${titulo_secao_reserva}    Flights from ${origem} to ${destino}:
    Tirar Screenshot    3-Lista de Voos
    Clicar no voo escolhido
    Wait Until Element Is Visible    ${titulo_secao_pagamento}
    Element Text Should Be    ${titulo_secao_pagamento}    Your flight from TLV to SFO has been reserved.
    Tirar Screenshot    4-Formulario de pagamento
    Preencher nome do passageiro    ${nome_passageiro}
    Preencher endereco    ${endereco}
    Preencher cidade    ${cidade}
    Preencher estado   ${estado}
    Preencher cep    ${cep}
    Preencher tipo do cartao    ${cartao_tipo}
    Preencher numero do cartao    ${cartao_numero}
    Preencher mes do cartao   ${cartao_mes} 
    Preencher ano do cartao    ${cartao_ano}
    Preencher nome no cartao    ${cartao_nome}
    Tirar Screenshot    5-Formulario Preenchido
    Clicar no botao Purchase Flight
    Wait Until Element Is Visible    ${mensagem_confirmacao_compra}
    Element Text Should Be    ${mensagem_confirmacao_compra}    Thank you for your purchase today!
    Tirar Screenshot    6-Confirmacao da compra
    Voltar para Home