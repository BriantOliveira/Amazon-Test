*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "Ferrari 458"


Click Product Link
    [Documentation]  Clicks on the first product in the search result
    Click Link  css=#result_O a.s-access-detail-page