*** Settings ***
Library  Selenium2Library
Resource  ../Resources/PO/ProductPage.robot

*** Keywords ***
Varify Product Page Contain Element
    ProductPage.Check Page Contain Phrase Element
Take Screenshots Of Elements
    ProductPage.Take Screenshot All Of Search Products