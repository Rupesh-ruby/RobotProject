*** Settings ***
Library      SeleniumLibrary
Library     XML
*** Test Cases ***

TC1
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.salesforce.com/in/form/signup/freetrial-sales/
    Input Text    name:UserFirstName    john
    Input Text    name:UserLastName    wick
    Input Text    name:UserEmail    john@gmail.com
    Input Text    name:CompanyName    LTTS
    Select From List By Label    name:UserTitle  IT Manager
    Select From List By Label    name:CompanyEmployees  501 - 1500 employees
    Select From List By Label    name:CompanyCountry    United States
    Select From List By Label    name:CompanyState      New Jersey
    Click Element    xpath=//div[@class='checkbox-ui']
    Click Element    name=start my free trial
    Element Text Should Be    xpath=//span[contains(@id,'UserPhone')]    Enter a valid phone number
TC2
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.goto.com/meeting/
