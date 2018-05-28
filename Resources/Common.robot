*** Settings ***
Library  Selenium2Library


*** Keywords ***
Begin Web Test
    Open Browser  about:blank  chrome


End Web Test
    Close Browser
