*** Settings ***
Documentation  This is some simple information about the whole suite

Resource  Resources/Common.robot   #Necessary for Setup & Teardown
Resource  Resources/Amazon.robot    #Necessary for lower level keywords
Test Setup   Begin Web Test
Test Teardown   End Web Test

*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke
    Given user is not logged in
    When user searchs for products
    Then search results contain relevant products


Logged out user can view a product
    [Tags]  Smoke
    Given User is not logged in
    And user searched for products
    And search results contains relevant products
    And user selects a prodcut from search results


User must sign into check out
    [Documentation]  This is going to test the checkout process
    [Tags]  Smoke
    Begin Web test
    Search for Products
    Select Product from Search Results
    Add Product to Card
    Begin Checkout
    End Web Test
    Close Browser


*** Keywords ***
Begin Web Test
    Open Browser  about:blank  chrome

Search for Product
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox   Ferrari 458
    Click Button  x=path=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Feeari 458"

Select Product from Search Results
    Click Link  css=#result_O a.s-acess-detail-page
    Wait Until Page Contains  Back to search results

Add Product to Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  1 item added to Cart

Begin Checkout
    Click Link  Proceed to Checkout
    Page Should Contain Element  ap_signin1a_pagelet_title
    Element Text Should Be  ap_signin1a_pagelet_title  Sign In

End Web Test
    Close Browser

