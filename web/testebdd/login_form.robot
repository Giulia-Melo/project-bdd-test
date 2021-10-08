*** Settings ***
Resource        keywords.robot

Test Setup      Nova Sessão   
Test Teardown   Encerra Sessão 

*** Test Cases ***
Cenário: Login com sucesso  
    [tags]      loginsuccessed
    Dado que preencho para fazer login na página  
    Quando clico no botão login 
    Então sou direcionado para página inicial
    
Cenário: Usuáro não existe 
    [tags]      loginfailed
    Dado que preencho o campo na tela de login
    Quando aperto no botão de login
    Então sou direcionado a página principal 

    