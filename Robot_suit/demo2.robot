*** Settings ***
Library         OperatingSystem
*** Test Cases ***

TC1
    [Documentation]     #working with demo
    Create Dictionary   path=C:\\mine\\demo123

TC2
    Log To Console    c:\\mine\\demo123
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${EXECDIR}
    Log To Console    c:${/}mine${/}demo123
    Log To Console    hi${SPACE}${SPACE}world
    Log To Console    ${TEST_NAME}
    Log To Console    ${SUITE_NAME}