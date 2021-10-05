*** Settings ***
Resource        base.robot

Test Setup      Nova Sessão   
Test Teardown   Encerra Sessão 


*** Test Cases ***
should see Page Title
    Title Should Be     Training Wheels Protocol
   