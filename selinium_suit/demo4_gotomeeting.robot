*** Settings ***
Library      SeleniumLibrary
Library     XML
*** Test Cases ***

TC1
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.goto.com/meeting
    Click Button    id:truste-consent-button
    Click Element    link:Try Free
    Input Text    id:first-name    john
    Input Text    id:last-name    wick