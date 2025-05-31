*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MouseActions
    #Right click/open context menu
    open browser    http://swisnl.github.io/jQuery-contextMenu/demo.html       chrome
    maximize browser window
    open context menu      xpath:/html/body/div/section/div/div/div/p/span  #right click
    sleep    5
DoubleClick
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[normalize-space()='Copy Text']
    sleep    5