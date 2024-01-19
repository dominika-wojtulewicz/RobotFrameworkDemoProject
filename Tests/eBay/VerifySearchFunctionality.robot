*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBay_UserDefinedKeywords.robot
Resource  ../../Resources/PageObject/HeaderPage.robot
Resource  ../../Resources/PageObject/SearchResultsPage.robot

Test Setup  CommonFunctionality.Start TestCase
Test Teardown  CommonFunctionality.Finish TestCase

*** Variables ***


*** Test Cases ***
Verify basic search functionality for eBay
    [documentation]  This test case verifies the basic search
    [tags]  Functional, search, basic

    HeaderPage.Input Search Text and Click Search  mobile
    eBay_UserDefinedKeywords.Filter basic results by condition

    HeaderPage.Check if Logo Button Returns to main page
    Sleep  3

Verify advanced search functionality for eBay
    [documentation]  This test case verifies advanced search
    [tags]  Functional, search, advanced

    HeaderPage.Click Advanced Search Button
    eBay_UserDefinedKeywords.Advanced Search Form Input and Search
    Sleep  5

    #eBay_UserDefinedKeywords.Verify advanced search results

