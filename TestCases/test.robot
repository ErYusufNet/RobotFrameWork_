*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    logintToApplication
    close browser

*** Keywords ***
logintToApplication
    Click Link    xpath://a[@class='ico-login']
    Input Text    class:email    pavanoltraining@gmail.com
    Input Text    id:Password    Test@123
    Click Element    xpath=//button[@class='button-1 login-button']
