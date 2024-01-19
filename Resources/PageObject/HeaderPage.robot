*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***
#${search_text}  mobile
# @{search_text}  mobile  travel  gift  phone   -list variable
# &{search_text}  abc=books  bcd=travel   - dictionary variable

*** Keywords ***
Input Search Text and Click Search
    [Arguments]  ${search_text}
    Input Text  ${SearchTextBox}  ${search_text}  # diffrent: @{search_text}[1] -search travel from list, with dictionary variable would be:   &{search_text.abc}
    Press Keys  ${SearchButton}  [Return]
    Page Should Contain  results for mobile

Check if Logo Button Returns to main page
    Click Element  ${LogoButton}  Return
    Page Should Contain Link  https://www.ebay.com/

Click Advanced Search Button
    Click Element  ${AdvancedSearchLink}
