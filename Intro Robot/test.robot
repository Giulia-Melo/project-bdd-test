*** Settings ***
Library     app.py


*** Test Cases ***
Deve retornar mensagem de boas vindas 
    ${result}=          Welcome      Giulia
    Should Be Equal     ${result}    Olá Giulia, bem vindo ao curso de Robot Framework!