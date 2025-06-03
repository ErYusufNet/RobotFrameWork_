*** Settings ***
Library    SeleniumLibrary    # Import SeleniumLibrary for browser automation

*** Test Cases ***
MouseActions
    open browser    http://swisnl.github.io/jQuery-contextMenu/demo.html    chrome    # Open context menu demo site in Chrome
    maximize browser window    # Maximize the browser window
    open context menu    xpath:/html/body/div/section/div/div/div/p/span    # Right-click on the specified element
    sleep    3    # Wait to observe the context menu

DoubleClick
    go to    https://testautomationpractice.blogspot.com/    # Navigate to double-click demo page
    maximize browser window    # Maximize the browser window
    double click element    xpath://button[normalize-space()='Copy Text']    # Perform double-click on the button
    sleep    3    # Wait to observe the result

DragDrop
    go to    http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html    # Navigate to drag-and-drop demo page
    wait until element is visible    id:box6    timeout=10    # Wait until draggable element ("Rome") is visible
    wait until element is visible    id:box106    timeout=10    # Wait until drop target ("Italy") is visible
    drag and drop    id:box6    id:box106    # Drag "Rome" and drop on "Italy"
    sleep    5    # Wait to observe the drag-and-drop result

