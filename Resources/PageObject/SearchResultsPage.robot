*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage.robot

*** Variables ***
${search_result} =  results for

*** Keywords ***
Verify Search Results
    [Arguments]  ${search_text}
    Page should Contain  ${search_text}  ${search_text}

Select product condition


Select delivery options