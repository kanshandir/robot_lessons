*** Settings ***
Library  Selenium2Library
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/SearchPage.robot

*** Keywords ***
Loading Front Page
    LandingPage.Load Url
Search somth
    SearchPage.Check Fill Search Bar
Verify Results Contain Search Term
    SearchPage.Verify Results Term
CLick One Of The Result Links
    SearchPage.Check Click Some Link