*** Settings ***
Library   DateTime

*** Test Cases ***
TC1
   Log To Console    message=rupesh
   Log To Console    hello

TC2
    ${my_name}   Set Variable   rupesh
    Log To Console   ${my_name}

TC3
    ${current_date}   Get Current Date
    Log To Console    ${current_date}

TC4
    ${radius}  Set Variable   10
    ${res}   Evaluate   ${radius}*${radius} * 3.14
    Log To Console    ${res}
