*** Test Cases ***
Forloop6
    forloop6

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
Forloop4
    FOR    ${i}     IN    john  david   smith
    LOG TO CONSOLE    ${i}
    END

Forloop5
    @{namelist}     CREATE LIST    john     david   smith   scott
    FOR     ${i}    IN    @{namelist}
    log to console    ${i}
    END
Forloop6    #exit for loop
    @{items}     create list    1    2    3    4    5
    FOR    ${i}     IN  @{items}
    log to console    ${i}
    exit for loop if    ${i}==3
    END









