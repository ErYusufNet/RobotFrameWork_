*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Test Cases ***
NavigationTest
    open browser    https://www.google.com/     chrome
    ${loc}=     get location
    log to console    ${loc}
    sleep    3
    go to    htttps://www.youtube.com/
    ${loc}=     get location
    log to console    ${loc}
    sleep    3
    go back







*** Keywords ***
