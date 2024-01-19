*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://ebay.com
${browser}   chrome

*** Keywords ***
Start TestCase
    Open browser  ${url}  ${browser}
    Maximize Browser Window

Finish TestCase
    Close browser