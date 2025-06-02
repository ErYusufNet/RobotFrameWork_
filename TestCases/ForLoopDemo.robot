*** Test Cases ***





*** Keywords ***
ForLoop1
    FOR    ${i}    IN RANGE    1    10
        LOG TO CONSOLE    ${i}
    END

ForLoop2
    FOR    ${i}    IN    1 2 3 4 5 6 7 8
        LOG TO CONSOLE    ${i}
    END


ForLoop3withList
    @{items}    create list    1    2   3   4   5
    FOR    ${i}  IN    @{items}
    log to console    ${i}
    END

