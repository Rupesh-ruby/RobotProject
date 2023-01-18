*** Settings ***
Library   SeleniumLibrary
*** Test Cases ***

TC1
    Open Browser   url=https://www.online.citibank.co.in/   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    xpath=//a[@class='fancybox-item fancybox-close']
    Click Element    xpath=//span[@class='txtSign']
    Switch Window   Citibank India
    Click Element    xpath=//div[@class='fl cup pt3']
    Click Element    xpath=//a[@class='sbSelector']
    Click Element    xpath=//a[@rel='Credit Card']
    Input Text    xpath=//input[@id='citiCard1']  4545
    Input Text    id:citiCard2  5656
    Input Text    id:citiCard3    8887
    Input Text    id:citiCard4    9945
    Input Text    id:cvvnumber    234
    Click Element    xpath=//input[@id='bill-date-long']
    Select From List By Label    xpath=//select[@class='ui-datepicker-year']    2022
    Select From List By Label   xpath=//select[@class='ui-datepicker-month']    Apr
    Click Element         link=14
    Click Element    xpath=//input[@class='ctaBlue minWidth']
    Element Should Contain    xpath=//*[contains(text(),'• Please accept Terms and Conditions')]    Please accept Terms and Conditions
