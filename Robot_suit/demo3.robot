*** Settings ***
Library    OperatingSystem
Library    Collections
*** Variables ***
${BROWER_NAME}      Chrome
${MY_NUM}           2583691470
${COLOUR}   Red         Green       Yellow
*** Test Cases ***
TC1
    ${my_name}  Set Variable    Rupesh
    Log To Console    ${my_name}
    Log To Console    ${BROWER_NAME}
TC2
    Log To Console    ${BROWER_NAME}
    Log To Console    ${MY_NUM}
TC3
    Log To Console    ${COLOUR}[2]
    Log To Console    ${COLOUR}

TC4
    ${item_count}   Get Length    ${COLOUR}
    Log To Console    ${item_count}
    
TC5
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

TC6
    FOR    ${1}    IN RANGE  1  11
        Log To Console    ${1}
    END
TC7
    @{fruit}    Create List     apple   orange  melon   mango
    FOR    ${element}    IN    @{fruit}
        Log    ${element}
    END
    
TC8
    &{emp}      Create Dictionary     empo=101         empn=len
    Log To Console    ${emp}[empo]