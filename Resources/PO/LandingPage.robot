*** Settings ***
Library  Selenium2Library

*** Keywords ***
Load Url
    Go To  ${START_URL}
    Maximize Browser Window