*** Settings ***
Library    OperatingSystem
Library    Collections
Library    String

*** Test Cases ***

TC1
    [Documentation]     #working with List and File
    @{demo3}    List Files In Directory    C:${/}Users${/}40032464${/}PycharmProjects${/}Robot_Project${/}Robot_suit${/}
    #Log To Console    ${demo3}
    Log List    ${demo3}
    Log To Console    ${demo3}[0]

TC2
    ${name}     Set Variable        robot framework session
    Log To Console    ${name}
    ${n}    Convert To Upper Case   ${name}
    Log To Console    ${n}
    ${final_str}    Remove String    ${n}  SESSION
    Log To Console    ${final_str}
TC3
    ${num1}     Set Variable  $200,100
    ${num2}     Set Variable  $200

    ${a}    Remove String    ${num1}    $   ,
    ${b}    Remove String    ${num2}    $
    ${c}    Evaluate    ${a}+${b}
    Log To Console    ${c}