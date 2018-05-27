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