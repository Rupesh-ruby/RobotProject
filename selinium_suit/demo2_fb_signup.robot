*** Settings ***
Library  SeleniumLibrary
Library    XML
*** Test Cases ***

TC1 Register
    Open Browser    url=https://www.facebook.com    browser=chrome
    Click Element    link=Create New Account
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text      name=firstname    Rupesh
    Input Text    name=lastname    JP
    Input Text    name=reg_email__    rupesh@ltts.com
    Input Password    id:password_step_input    123654789

    Select From List By Label    id=day    16
    Select From List By Label    id=month   Apr
    Select From List By Label    id=year    2000
    Click Element    xpath=//input[@value='-1']


    Submit Form



