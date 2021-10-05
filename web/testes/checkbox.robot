*** Settings ***
Resource        base.robot

Test Setup      Nova Sessão   
Test Teardown   Encerra Sessão 

*** Variables *** 
${check_thor}       id:thor 
${check_iron}       css:input[value= 'iron-man']
${check_panther}    xpath://*[@id='checkboxes']/input[7]


*** Test Cases ***
Marcando opção com ID
     Go To                        ${URL}/checkboxes
    Select Checkbox               ${check_thor}      
    Checkbox Should be Selected   ${check_thor}  

Marcando opção com CSS Selecto
    Go To                         ${URL}/checkboxes
    Select Checkbox               ${check_iron}
    Checkbox Should be Selected   ${check_iron}

Marcando opção com xpath
    Go To                         ${URL}/checkboxes
    Select Checkbox               ${check_panther}
    Checkbox Should be Selected   ${check_panther}

