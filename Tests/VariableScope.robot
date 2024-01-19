#Global scope
#variables are avaiable evrywhere in the test data

#test suite scope
#variables are avaiable in a test case and in all user keywords the test uses

#local scope
#test case and user keywords have local variables that are not seen by other tests or keywords

*** Settings ***

*** Variables ***
${VARIABLE_DEMO} =  This is GLOBAL variable

*** Keywords ***
This is demo keyword
    [Arguments]  ${variable_demo}=This is KEYWORD variable
    log  ${VARIABLE_DEMO}

*** Test Cases ***
This is demo test 1
    ${variable_demo} =  Set Variable   This is TESTCASE variable
    Log  ${VARIABLE_DEMO}

This is demo test 2
    Log  ${VARIABLE_DEMO}

This is demo test 3
    This is demo keyword