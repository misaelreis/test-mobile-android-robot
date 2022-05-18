*** Settings ***

Library    hello.py

*** Test Cases ***
Deve retornar mensagem de boa-vindas
    ${resultado}=    Hello Robot    Misael
    Should Be Equal    ${resultado}    Olá, Misael.