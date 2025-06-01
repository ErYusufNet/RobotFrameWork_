*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

ScrollingTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html       chrome
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    scroll element into view    xpath://*[@id="ct-list"]/table[2]/tbody/tr[96]/td[1]/img
    sleep    1