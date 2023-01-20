*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
TC1
  Open Application    remote_url=http://localhost:4723/wd/hub
  ...  platformName=android
  ...  deviceName=OPPO A74 5G
  #...  browserName=chrome
  ...  app=C:${/}Users${/}40032464${/}Downloads${/}khan-academy-7-3-2.apk

  ${page_source}  Get Source
  Log To Console    ${page_source}
  Sleep    5s
  Close Application
  
TC2
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=OPPO A74 5G
#   ...     browserName=chrome
    ...     app=C:${/}Users${/}40032464${/}Downloads${/}khan-academy-7-3-2.apk

    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']      30s
    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']    30s
    Click Element    xpath=//android.widget.TextView[@text='Sign in']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']    30s
    Click Element    xpath=//android.widget.TextView[@text='Sign in']

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="Enter an e-mail address or username"]    30s
    Input Text    xpath=//android.widget.EditText[@content-desc="Enter an e-mail address or username"]   rup12@gmail.com

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="Password"]   30s
    Input Password    xpath=//android.widget.EditText[@content-desc="Password"]    123456
    Click Element    xpath=//android.widget.Button[@content-desc="Sign in"]

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='There was an issue signing in']  30s
    Element Should Contain Text    xpath=//android.widget.TextView[@text='There was an issue signing in']    There was an issue signing in
    Sleep    5s
    [Teardown]      Close Application
