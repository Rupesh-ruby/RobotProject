*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
TC1
    [Documentation]     #working with Selinium suit
    Open Browser   url=https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Open%20Browser   browser=chrome
    ${actual_title}   Get Title
    Log To Console    ${actual_title}
    Log   ${actual_title}
    Should Be Equal    ${actual_title}   SeleniumLibrary

TC2

    Open Browser    url=https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Open%20Browser   browser=chrome
    Title Should Be   SeleniumLibrary

TC3
    Open Browser       url=https://www.facebook.com    browser=chrome
    Input Text     locator=id:email    text=hello@gmail.com
    Input Password    id:pass    well123
    Click Element    name:login

TC4
    Open Browser        url=https://www.db4free.net/phpMyAdmin/    browser=chrome
    Input Text    id:input_username    hello@gmail.com
    Input Password    id:input_password    Rupesh0412@
    Click Element    id:input_go

TC5
    Open Browser    browser=chrome
    @{output}       Run Keyword And Ignore Error    Click Element    xpath=//a
    Log To Console    ${output}
    Log To Console    ${output}[0]
    Log To Console    ${output}[1]
    Log     ${output}