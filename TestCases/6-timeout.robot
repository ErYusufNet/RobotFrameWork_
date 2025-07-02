


*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${name}     id:FirstName
${surname}  id:LastName
${email}    id:Email
${password}    id:Password
${password2}   id:ConfirmPassword




*** Test Cases ***
RegTest

    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window
    ${time}=    get selenium timeout
    log to console    ${time}
    set selenium timeout    10 seconds
    wait until element contains    Register #it will wait to find this element with default 5 seconds

    select radio button    Gender   M
    fill personal information
    click button    id:register-button



*** Keywords ***
Fill Personal Information
    input text    ${name}   yusuf
    input text    ${surname}    er
    input text    ${email}  yusufer.net@hotmail.com
    input text    ${password}   yusuf.01
    input text    ${password2}  yusuf.01



