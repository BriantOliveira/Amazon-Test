*** Settings ***

*** Keywords ***
user is not logged in
    Log  Check to see whether user is logged in


user searches for products
    LandingPage.Load
    TopNav.Search for products


search results contain relevant products
    SearchResults.Verify Search Complete


user user select a product from search results
    SearchResults.Click Product link
    Product.Verify Page Loaded


correct product page loads
    Product.Verify Page Loaded


user adds the products to their cart
