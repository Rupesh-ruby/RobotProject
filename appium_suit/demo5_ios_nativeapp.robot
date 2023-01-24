*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    &{dic}      Create Dictionary       buildName=khan
    ...     projectName=khan project
    ...     userName=rupeshjp_t4x6Ph
    ...     accessKey=Zr11seLK4M32EJqhfY1N
    
    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...        platformName=ios
    ...        deviceName=iPhone 11 Pro
    ...        app=bs://caf15bc75b8a0016aa0528931cb350e0aa16bab0
    ...        platformVersion=13
    ...        bstack:options=${dic}
    Set Appium Timeout    20s
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Username"]
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-Username"]    standard_user
    Wait Until Page Contains Element    xpath=//XCUIElementTypeSecureTextField[@name="test-Password"]
    Input Password      xpath=//XCUIElementTypeSecureTextField[@name="test-Password"]    secret_sauce
    Click Element    xpath=//XCUIElementTypeOther[@name="test-LOGIN"]
    
    Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[1]
    Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[1]
    Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[2]
    Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[2]
    Click Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]/XCUIElementTypeOther

    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
    Click Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]

    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-First Name"]
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-First Name"]    john
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Last Name"]
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-Last Name"]    jo
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]    100022
    Click Element    xpath=//XCUIElementTypeOther[@name="test-CONTINUE"]
    Hide Keyboard   key_name=Done
    Wait Until Page Contains Element    xpath=XCUIElementTypeOther[@name="test-CONTINUE"]
    Click Element     xpath=XCUIElementTypeOther[@name="test-CONTINUE"]
    
    Should Contain          xpath=//XCUIElementTypeStaticText[@label='Payment Information']       Payment Information

    ${app_source}           Get Source
    Log        ${app_source}
    [Teardown]      Close Application

