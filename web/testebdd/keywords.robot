*** Settings ***
Resource       resourceBDD.robot  
Resource       base.robot

Library        SeleniumLibrary

***Keywords***

Dado que preencho para fazer login na página
    Clicar botão login       
    Preencher campos    stark   jarvis!

Quando clico no botão login 
    Clicar botão 

Então sou direcionado para página inicial
    Valida Login   


***Keywords***
Dado que preencho o campo na tela de login
    Clicar botão login       
    Preencher campos    Giulia   jarvis!    

Quando aperto no botão de login
    Clicar botão

Então sou direcionado a página principal 
    Valida Login    
     
