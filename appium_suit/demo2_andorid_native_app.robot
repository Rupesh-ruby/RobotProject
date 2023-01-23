*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
TC1
   Open Application    remote_url=http://localhost:4723/wd/hub
  ...  platformName=android
  ...  deviceName=OPPO A74 5G
  #... browserName=chrome
  ...  app=C:${/}Users${/}40032464${/}Downloads${/}khan-academy-7-3-2.apk
       Wait Until Page Contains Element    xpath=//*[@text='Dismiss']      30s
       Set Appium Timeout    30s
       Click Element    xpath=//*[@text='Dismiss']

       Wait Until Page Contains Element    xpath=//android.widget.ImageView[@content-desc="Settings"]    30s
       Click Element       xpath=//android.widget.ImageView[@content-desc="Settings"]

       Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Sign in"]    30s
       Click Element    xpath=//android.widget.TextView[@text="Sign in"]

       Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc="Sign up with email"]   30s
       Click Element    xpath=//android.widget.Button[@content-desc="Sign up with email"]

       Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="First name"]     30s
       Input Text    xpath=//android.widget.EditText[@content-desc="First name"]    ruby
       Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="Last name"]     30s
       Input Text    xpath=//android.widget.EditText[@content-desc="Last name"]     ruby04

       Wait Until Page Contains Element    xpath=//android.view.ViewGroup[@content-desc="Birthday"]    30s
       Click Element    xpath=//android.view.ViewGroup[@content-desc="Birthday"]
       Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id="android:id/numberpicker_input"]
       Click Element    xpath=//android.widget.EditText[@resource-id="android:id/numberpicker_input"]
       Clear Text    xpath=//android.widget.EditText[@resource-id="android:id/numberpicker_input"]

       Input Text    xpath=//android.widget.EditText[@resource-id="android:id/numberpicker_input"]    Dec
       Click Element    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[2]
       Clear Text    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[2]

       Input Text    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[2]     04
       Click Element    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[3]

       Clear Text    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[3]
       Input Text    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[3]     2000

       Click Element    xpath=//android.widget.Button[@text="OK"]
       Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="Email address"]    30s
       Input Text    xpath=//android.widget.EditText[@content-desc="Email address"]    rub04@gmail.com

       Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="Password"]   30s
       Input Text    xpath=//android.widget.EditText[@content-desc="Password"]    ruby0412@gmail.com
       Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="CREATE"]
       Click Element    xpath=//android.widget.TextView[@text="CREATE"]

       Sleep    5s
       [Teardown]      Close Application

TC2
    [Documentation]     #working with native appOpen Application
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=OPPO A74 5G
    ...     appPackage=org.khanacademy.android
    ...     appActivity=org.khanacademy.android.ui.library
    Set Appium Timeout    30s
    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']      30s
    Click Element    xpath=//*[@text='Dismiss']
    Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc="Search tab"]    30s
    Click Element       xpath=//android.widget.Button[@content-desc="Search tab"]
    #Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Arts and humanities"]    30s
    #Click Element       xpath=//android.widget.TextView[@text="Arts and humanities"]
    #Scroll Down    xpath=//android.widget.Button[@content-desc="Arts of Asia"]
    #Click Element    xpath=//android.widget.Button[@content-desc="Arts of Asia"]