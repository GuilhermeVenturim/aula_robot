*** Settings ***
Resource   ..\\..\\config\\package.robot


*** Keywords ***
Acessar a página home do site Automation Practice
  Go To                                 ${URL}  
  Title Should Be                       ${TITLE_HOMEPAGE}

Digitar o nome do produto "${PRODUCT}" no campo de pesquisa
  Input Text                            ${SEARCH_BOX}     ${PRODUCT}
  Capture Page Screenshot

Digitar o nome de um ${PRODUCT} inexistente
  ${NONEXISTENT}  FakerLibrary.name
  Input Text                            ${SEARCH_BOX}    ${NONEXISTENT}
  Set Test Variable                     ${NONEXISTENTS}

Clicar no botão pesquisar
  Click Element                         ${SEARCH_BUTTON}
  Capture Page Screenshot

Conferir se o ${PRODUCT} foi listado no site
  Wait Until Element Is Visible         xpath=//*[@id="center_column"]/ul/li/div/div[1]/div
  Title Should Be                       Search - My Store
  ###Page Should Contain Image             xpath=//*[@id="center_column"]//*[@src="${URL}/img/p/7/7-home_default.jpg
  ###Page Should Contain Link              xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img

Conferir mensagem ${ERROR_MESSAGE}
    Element Text Should Not Be          class=alert.alert-warning    ${ERROR_MESSAGE}

    ##Element Text Should Not Be    ${NOT_FOUND}    ${MENSAGEM}

Conferir erro com produto aleatorio
    Element Text Should Be  class=alert.alert-warning  No results were found for your search "${NONEXISTENTS}"
    log to console  O nome aleatorio gerado foi: ${NONEXISTENTS}