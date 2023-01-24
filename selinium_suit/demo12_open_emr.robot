*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
   Open Browser    url=http://demo.openemr.io/b/openemr/   browser=chrome
   #Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Input Text    id:authUser    admin
   Input Password    id:clearPass    pass
   Select From List By Label    xpath=//select[@class="form-control"]   English (Indian)
   Click Button    id=login-button
   Click Element    xpath=//div[text()='Patient']
   Click Element    xpath=//div[@class="menuLabel px-1 dropdown-toggle oe-dropdown-toggle"]
   Click Element    xpath=//div[text()='New/Search']
   Select Frame     xpath=//iframe[@src='/b/openemr/interface/new/new.php']
   Click Element    xpath=//input[@id='form_fname']
   Input Text       id:form_fname       ruby
   Click Element    xpath=//input[@id='form_lname']
   Input Text       id:form_lname       0412
   Click Element    xpath=//input[@id='form_DOB']
   Input Text       id:form_DOB     24/01/2023

   Select From List By Label    name:form_sex   Male
   Click Button    xpath=//button[@id='create']

   Unselect Frame
    Select Frame    xpath=//iframe[@id='modalframe']
    Click Element    xpath=//input[@value='Confirm Create New Patient']
   ${alert_text}  Handle Alert  action=ACCEPT  timeout=30s
   Log To Console    ${alert_text}
   Should Contain    ${alert_text}    New Due Clinical Reminders
   Click Element    xpath=//div[@class='closeDlgIframe']
   Should Contain    xpath=//*[contains(text(),'Ruby 0412')]    Ruby 0412
   [Teardown]   Close Browser