*** Settings ***
Library    SeleniumLibrary    # Enables browser automation (clicks, typing, etc.)

*** Variables ***
${browser}    chrome                             # Browser type
${url}        https://demo.nopcommerce.com/      # Website to test



*** Test Cases ***
TestingInputBox
    Open Browser    ${url}    ${browser}         # Open the site in Chrome
    Maximize Browser Window                      # Maximize the browser window
    Title Should Be    nopCommerce demo store. Home page title    # Confirm correct page is open

    Click Link    xpath://a[@class='ico-login']  # Click on the login link

    ${"email_txt"}    Set Variable    class:email    # Save email field locator into a variable

    Element Should Be Visible    ${"email_txt"}     # Check if email input is visible
    Element Should Be Enabled    ${"email_txt"}     # Check if email input is enabled (not disabled)

    Input Text    ${"email_txt"}    JohnDavid@gmail.com    # Type email into the input field
    Sleep    5                                             # Wait 5 seconds (to observe action)

    Clear Element Text    ${"email_txt"}                   # Clear the input field
    Sleep    3                                             # Wait 3 seconds before closing

    Close Browser                                           # Close the browser
