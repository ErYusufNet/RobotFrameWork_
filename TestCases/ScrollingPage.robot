*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

*** Test Cases ***
ScrollingTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html    chrome
    execute javascript    window.scrollTo({ top: document.body.scrollHeight, behavior: 'smooth' })
    sleep    5
