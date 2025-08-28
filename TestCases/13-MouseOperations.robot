*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

Right Click
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    maximize browser window
    open context menu        xpath://span[@class='context-menu-one btn btn-neutral']
    #open context menu = right click action
    sleep    5
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[normalize-space()='Copy Text']
    sleep    5
    drag and drop    id:draggable   id:droppable
    sleep    5