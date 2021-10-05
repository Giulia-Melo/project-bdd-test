*** Settings ***
Resource        base.robot

Test Setup      Nova Sessão   
Test Teardown   Encerra Sessão 

*** Test Cases ***
Verifica valor ao informar numero da linha  
     Go To                           ${URL}/tables
     Table Row Should Contain        id:actors  1   $ 10.000.000

Descobre a linha pelo texto chave e valida demais valores
     Go To                           ${URL}/tables
    ${target}=                       Get WebElement                  xpath:.//tr[contains(., '@robertdowneyjr')]
    Log                              ${target.text} 
    Log To Console                   ${target.text} 
    Should Contain                   ${target.text}                  $ 10.000.000
    Should Contain                   ${target.text}                  Homem de Ferro   