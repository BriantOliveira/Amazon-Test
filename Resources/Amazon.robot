*** Settings ***
Library   Selenium2Library


*** Keywords ***
Search for Product
    Go to  http://www.amazon.com
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

