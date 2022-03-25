*** Settings ***
Resource                ../../src/config/package.robot
Test Setup              Abrir o navegador    
Test Teardown           Fechar o navegador

*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
    [Tags]  @test
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site

Caso de Teste 02: Pesquisar produto não existente
    [Tags]  @test
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "itemNaoExistente" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir mensagem "No results were found for your search"

