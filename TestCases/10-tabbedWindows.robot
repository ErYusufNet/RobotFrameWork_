*** Settings ***
Library    SeleniumLibrary





*** Test Cases ***
MultipleBrowser
    open browser    https://www.google.com/     chrome
    maximize browser window

    sleep    2

    open browser    https://www.youtube.com/    chrome
    maximize browser window
    switch browser  2
    ${title}=   get title
    log to console    ${title}

    switch browser    1
    sleep
    ${title2}=      get title
    log to console    ${title2}

    sleep    5
    close all browsers




