*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/GoogleWeb.robot
Resource  ../Resources/ProductWeb.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://www.google.com
${SEARCH_TERM} =  apple watch

*** Test Cases ***
User can search smth
    [Documentation]  Some basic tests
    [Tags]  Smoke
    GoogleWeb.Loading Front Page
    GoogleWeb.Search somth
    GoogleWeb.Verify Results Contain Search Term
    GoogleWeb.CLick One Of The Result Links
    ProductWeb.Varify Product Page Contain Element
    ProductWeb.Take Screenshots Of Elements