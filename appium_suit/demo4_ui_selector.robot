*** Settings ***
Library     AppiumLibrary


*** Test Cases ***
TC1 Swipe
        [Documentation]     #Working with native appOpen Application
        Open Application    remote_url=http://localhost:4723/wd/hub
        ...     platformName=android
        ...     deviceName=OPPO A74 5G
        ...     appPackage=org.khanacademy.android
        ...     appActivity=org.khanacademy.android.ui.library.MainActivity
        ...     noReset=true

        Set Appium Timeout  30s
        Run Keyword And Ignore Error     Wait Until Page Contains Element    android=UiSelector().text("Dismiss")
        Run Keyword And Ignore Error        Click Element           android=UiSelector().text("Dismiss")

        Wait Until Page Contains Element            android=UiSelector().description("Settings")
        Click Element           android=UiSelector().description("Settings")

        Wait Until Page Contains Element            android=UiSelector().textContains("Sign in")    30s
        Click Element               android=UiSelector().textContains("Sign in")
        Wait Until Page Contains Element                android=UiSelector().textContains("Sign up with email")     30s
        Click Element                    android=UiSelector().textContains("Sign up with email")
        Wait Until Page Contains Element    android=UiSelector().textContains("First name")     30s
        Input Text    android=UiSelector().textContains("First name")       Rupesh

        Wait Until Page Contains Element    android=UiSelector().textContains("Last name")      30s
        Input Text    android=UiSelector().textContains("Last name")        Ruby

         Wait Until Page Contains Element    android=UiSelector().textContains("Birthday")   30s
         Click Element    android=UiSelector().textContains("Birthday")

         Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input")
         Click Element    android=UiSelector().resourceId("android:id/numberpicker_input")
         Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input")
         Input Text    android=UiSelector().resourceId("android:id/numberpicker_input")     Dec
         Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
         Click Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
         Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
         Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)       20

         Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
         Click Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
         Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
         Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)    2000

         Click Element    android=UiSelector().resourceId("android:id/button1")
         Wait Until Page Contains Element    android=UiSelector().textContains("Email address")     30s
         Input Text    android=UiSelector().textContains("Email address")    rupesh123@gmail.com
         Wait Until Page Contains Element    android=UiSelector().textContains("Password")    30s

         Input Text    android=UiSelector().textContains("Password")    1232456
         Click Element    android=UiSelector().textContains("CREATE")

         Wait Until Page Contains Element    android=UiSelector().textContains("Invalid password")       30s
         Element Should Contain Text    android=UiSelector().textContains("Invalid password")       Invalid password
        [Teardown]  Close Application

TC2
        [Documentation]     #working with native app
        Open Application    remote_url=http://localhost:4723/wd/hub
        ...     platformName=android
        ...     deviceName=OPPO A74 5G
        ...     app=C:${/}Users${/}40032464${/}androids${/}khan-academy-7-3-2.apk
        Set Appium Timeout    20s
        Run Keyword And Ignore Error    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
        Run Keyword And Ignore Error    Click Element    xpath=//*[@text='Dismiss']
        Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc="Search tab"]
        Click Element       xpath=//android.widget.Button[@content-desc="Search tab"]
        Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Arts and humanities"]
        Click Element       xpath=//android.widget.TextView[@text="Arts and humanities"]
        &{count}        Create Dictionary       strategy=-android uiautomator
        ...     selector=UiSelector().text("Art of Asia")
        Execute Script    mobile: scroll     &{count}

        Click Element    android=UiSelector().text("Art of Asia")
        Sleep    5s
        [Teardown]      Close Application