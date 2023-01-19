*** Settings ***
Library      SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https:/www.ilovepdf.com/pdf_to_word
    Choose File      xpath=//input[@type='file']     C:${/}Users${/}40032464${/}Downloads${/}Membership _ NASSCOM.pdf
    Sleep    5s
    
TC2
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https:/www.facebook.com/
    Input Text    css=#email    jack
    Input Password    css=#pass    12365
    Click Element    css=button[name='login']

TC3
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://phptravels.net/
    Click Element    xpath=//span[@class='select2-selection__rendered']
    Input Text    xpath=//input[@class='select2-search__field']    Vadod
    Click Element    xpath=//li[@class='select2-results__option']
    Execute Javascript  document.querySelector('#checkin').value='31-10-2023'
    Sleep    4s
    Execute Javascript  document.querySelector('#checkout').value='21-11-2023'