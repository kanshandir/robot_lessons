*** Settings ***
Library  Selenium2Library
Library  Collections

*** Keywords ***
Check Page Contain Phrase Element
    Page Should Contain Element  xpath=//h1[contains(text(), '${SEARCH_TERM.title()}')]

Take Screenshot All Of Search Products
    [Documentation]  Make some loop for screenshot of all products
    ${elem_collect}=  Get WebElements  xpath=//*[@class='b-product-block__name']
    ${all_elems}=  Create List
    FOR  ${ITEMS}  IN  @{elem_collect}
        Append To List  ${all_elems}  ${ITEMS}
        Capture Element Screenshot  ${all_elems}
    END
