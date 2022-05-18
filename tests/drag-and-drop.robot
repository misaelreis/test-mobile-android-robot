*** Settings ***
Resource    ../resources/base.robot

Test Setup        Open Session
Test Teardown     Close Session

*** Test Cases ***
Deve momer o Hulk para o topo da lista
    Go To List
    Drag Drop    io.qaninja.android.twp:id/drag_handle    3    0