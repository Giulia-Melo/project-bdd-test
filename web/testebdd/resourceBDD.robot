*** Settings ***
Resource       variaveis.robot

Library        SeleniumLibrary

***Keywords***
Clicar botão login
    Click Element       ${paginaLogin}

Preencher campos
    [Arguments]         ${usuario}       ${senha}

    Input Text          ${campoLogin}    ${usuario}         
    Input Text          ${campoSenha}    ${senha}   

Clicar botão 
    Click Element       ${botaoLogin}

Valida Login
    Page Should Contain                  O usuário informado não está cadastrado!

# ***Keywords***

# Clicar botão login
#     Click Element       ${paginaLogin}

# Preencher campos
#     [Arguments]         ${usuario}       ${senha}

#     Input Text          ${campoLogin}    ${usuario}         
#     Input Text          ${campoSenha}    ${senha}   

# Clicar botão 
#     Click Element       ${botaoLogin}

# Valida Login
#     Should Contain Login Alert          O usuário informado não está cadastrado!                
