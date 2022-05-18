*** Settings ***
Resource    ../resources/base.robot

Test Setup        Open Session
Test Teardown     Close Session

*** Variables ***
${SPINNER}            id=io.qaninja.android.twp:id/spinnerJob
${LIST_OPTIONS}       class=android.widget.ListView

*** Keywords ***
Choice Job
    [Arguments]    ${target}
    Go To SingUp Form

    Click Element                    ${SPINNER}
    Wait Until Element Is Visible    ${LIST_OPTIONS}    
    Click Text                       ${target}

*** Test Cases ***
Deve selecionar o perfil QA
    Choice Job    QA

Deve selecionar o perfil Desenvolvedor
    Choice Job    Desenvolvedor