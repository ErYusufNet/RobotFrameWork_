*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
MultipleBrowser
    open browser    https://www.google.com/     chrome
    maximize browser window

    sleep    2

    open browser    https://www.youtube.com/    chrome
    maximize browser window
    switch browser  1
    ${title}=   get title
    log to console    ${title}

    switch browser    2
    ${title2}=      get title
    log to console    ${title2}


