*** Settings ***

Resource    ../resources/base.Robot

Test Teardown    Close Session

*** Test Cases ***
Deve abrir a tela principal
    Open Application    http://localhost:4723/wd/hub
    ...                automationName=UiAutomator2
    ...                platformName=Android
    ...                deviceName=Emulator
    ...                app=${EXECDIR}/app/twp.apk
    ...                udid=emulator-5554

    Wait Until Page Contains    Training Wheels Protocol
    Wait Until Page Contains    Mobile Version