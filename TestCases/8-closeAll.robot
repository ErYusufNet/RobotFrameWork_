*** Settings ***
Library    SeleniumLibrary

*** Variables ***



*** Test Cases ***
MyTestCase
    open browser  https://demowebshop.tricentis.com/register    chrome
    maximize browser window
    open browser    https://github.com/ErYusufNet   chrome
    maximize browser window

    #close browser   #this will close the latest browser
    close all browsers


*** Keywords ***



