*** Settings ***

Library    AppiumLibrary
Library    libs/extend.py
Resource    helpers.robot

*** Variables ***
${START}                COMEÇAR
${MENU_HAMBURGUER}      xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_VIEW}             id=io.qaninja.android.twp:id/tvNavTitle

*** Keywords ***
Open Session
    #Set Appium Timeout    5
    Open Application    http://localhost:4723/wd/hub
    ...                automationName=UiAutomator2
    ...                platformName=Android
    ...                deviceName=Emulator
    ...                app=${EXECDIR}/app/twp.apk
    ...                udid=emulator-5554
    Get Started

Close Session
    Close All Applications