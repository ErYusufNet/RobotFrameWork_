


*** Settings ***
Library    SeleniumLibrary



*** Test Cases ***
HandlingAlerts
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    click element    xpath://button[@id='confirmBtn']   #opens alert window
    sleep    3
    #handle alert    accept this will accept the alert by clicking ok
    #handle alert    dismiss     #this will reject the alert by clicking cancel/no
    #handle alert    leave   #this will ignore it
    alert should be present     Press a button!
    sleep    5




