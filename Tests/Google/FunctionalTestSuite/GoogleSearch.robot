*** Settings ***
Library  SeleniumLibrary
#resource you want

*** Variables ***


*** Test Cases ***
This is sample test case
    [documentation]  Google test
    [tags]  regression

    Open browser  https://www.google.com  chrome
    Close browser
*** Keywords ***


