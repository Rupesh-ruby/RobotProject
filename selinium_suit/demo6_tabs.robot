*** Settings ***
Library      SeleniumLibrary
Library     XML
*** Test Cases ***

TC1
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.db4free.net/
    Click Element  partial link=phpMyAdmin
    Switch Window   phpMyAdmin
    Input Text    id=input_username    PHPADMINWELCOME
    Input Password    id=input_password    Welcome
    Click Element    id:input_go
    Close Window