*** Settings ***
Documentation  This is some simple information about the whole suite

Resource  Resources/Common.robot   #Necessary for Setup & Teardown
Resource  Resources/Amazon.robot    #Necessary for lower level keywords
Test Setup   Begin Web Test
Test Teardown   End Web Test


*** Test Cases ***
User must sign into check out
    [Documentation]  This is going to test the checkout process
    [Tags]  Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Card
    Amazon.Begin Checkout
    Amazon.End Web Test



