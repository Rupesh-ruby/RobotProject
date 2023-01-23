*** Settings ***
Library    OperatingSystem
Library    Collections
*** Variables ***
${BROWER_NAME}      Chrome
${MY_NUM}           2583691470
${COLOUR}   Red         Green       Yellow
*** Test Cases ***
TC1
     @{fruits}     Create List   apple   orange  grapes
    Log To Console    ${fruits}
    Append To List      ${fruits}   berry
    Log To Console    ${fruits}
    Remove From List    ${fruits}    0
    Log To Console    ${fruits}
    Insert Into List    ${fruits}    1    Pineapple
    Log To Console    ${fruits}
    Get Length    ${fruits}
    Log To Console    ${fruits}
