*** Settings ***
Library  Selenium2Library

*** Keywords ***
Check Fill Search Bar

    Input Text  xpath=//input[@type="text"]  ${SEARCH_TERM}
    Click Button  xpath=//input[@name="btnK"]

Verify Results Term
    ${count} =  Get Element Count   //div[contains (@class, 'yuRUbf')]
    Should Be True  ${count} == 9

Check Click Some Link
    Click Element  xpath=//cite[contains(text(),'svyaznoy')]
    Sleep  5 s