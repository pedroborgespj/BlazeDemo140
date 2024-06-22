### Projeto de Teste Automatizado com Robot Framework

Este repositório contém um projeto de teste automatizado utilizando o Robot Framework e a SeleniumLibrary para realizar testes no site BlazeDemo, que simula a compra de passagens aéreas.

#### Objetivo
O objetivo deste projeto é automatizar o fluxo de compra de passagens até a confirmação (mensagem de "Thank You") utilizando o Robot Framework. O projeto está estruturado utilizando Page Objects para garantir uma melhor organização do código e manutenção dos testes.

#### Tecnologias Utilizadas
- **Robot Framework**: Framework de automação de testes genérico e de código aberto para aceitação de software.
- **SeleniumLibrary**: Biblioteca do Robot Framework para interação com navegadores via Selenium WebDriver.

#### Funcionalidades Implementadas
1. **Automatização do Fluxo de Compra**:
   - Navegação até a página de compra de passagens.
   - Preenchimento dos dados necessários.
   - Confirmação da compra até a página de agradecimento ("Thank You").

2. **Page Objects**:
   - Utilização de Page Objects para mapeamento e interação com elementos de cada página do BlazeDemo.

3. **Data-Driven Testing**:
   - Utilização de dados para execução de múltiplos casos de teste.

4. **Capturas de Tela**:
   - Cada teste gera 6 capturas de tela que são armazenadas de forma organizada na pasta `screenshots/`.

#### Como Executar os Testes
Para executar os testes, siga os passos abaixo:

1. **Pré-requisitos**:
   - Python 3.x instalado.
   - Instalação do Robot Framework (`pip install robotframework`).
   - Instalação da SeleniumLibrary (`pip install robotframework-seleniumlibrary`).

2. **Clonar o Repositório**:
git clone 
cd 

3. **Executar os Testes**:
robot .\tests\

#### Observações
Certifique-se de que o ambiente está configurado corretamente antes de executar os testes. As capturas de tela estarão disponíveis na pasta `screenshots/` após a execução dos testes.

Este projeto foi desenvolvido por Pedro Borges como parte de um teste de automação utilizando Robot Framework e SeleniumLibrary para o site BlazeDemo, para a turma FTS140, no curso de Formação em Teste de Software da Iterasys.

Para mais detalhes sobre o Robot Framework, visite [Robot Framework Documentation](https://robotframework.org/).