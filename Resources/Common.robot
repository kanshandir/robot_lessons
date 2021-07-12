*** Settings ***
Library  Selenium2Library


*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Set Browser Implicit Wait  10 sec

End Web Test
    Close Browser
