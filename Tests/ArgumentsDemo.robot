*** Settings ***

*** Keywords ***
Argument demo keyword
    [Arguments]  ${arg1}  ${arg2}
    Log  ${arg1}
    Log  ${arg2}

*** Test Cases ***
Argument demo keyword test
    Argument demo keyword  abc  cde

Argument demo keyword test 2
    Argument demo keyword  cde  abc