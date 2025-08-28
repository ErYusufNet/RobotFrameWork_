*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://www.saucedemo.com/
${browser}  chrome

*** Test Cases ***
TC1
    open browser    ${url}      ${browser}
    maximize browser window
    input text    id:user-name      standard_user
    input text    id:password       secret_sauce
    click button    xpath://input[@id='login-button']

    ${items_on_page}=    get element count    xpath://a
    log to console    ${items_on_page}
    ${LinkItems}=    create list

    ${end}=    Evaluate    ${items_on_page} + 1
    FOR    ${i}    IN RANGE    1    ${end}
        ${link_Text}=    get text    xpath=(//a)[${i}]
        log to console    ${link_Text}
    END
