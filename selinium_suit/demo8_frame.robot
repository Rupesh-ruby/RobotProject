** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    #enter userid as test123
    Select Frame    xpath=//frame[@name='login_page']
    Input Text    name:fldLoginUserId    test1123
    Click Element    xpath=//a[@class='btn btn-primary login-btn']
    Unselect Frame

    #Input Password    id:keyboard    123456
TC2
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.redbus.in/
    Click Element    xpath=//i[@class='icon-profile-new-unsigned ']
    Click Element    xpath=//li[@class='config-options ']
    Select Frame    xpath=//iframe[@class='modalIframe']
    Input Text    id:mobileNoInp    9856321472
    Element Should Contain    xpath=    expected
    