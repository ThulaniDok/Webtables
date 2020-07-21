*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/form_resources.robot
Library     DataDriver     ../TestData/user_details.csv


Suite Setup     Open Chrome Browser
Suite Teardown      Close Open Browser
Test Template       Add User To List


*** Test Cases ***
Add User 1

*** Keywords ***
Add User To List
    [Arguments]     ${FirstName}   ${LastName}    ${UserName}    ${Password}    ${Customer}    ${Role}    ${Email}   ${Cell}
    Home Page Should Be Open
    Add New User
    Input First Name    ${FirstName}
    Input Last Name     ${LastName}
    Input User Name     ${UserName}
    Input Password Name     ${Password}
    Input Customer      ${Customer}
    Input Role      ${Role}
    Input Email     ${Email}
    Input Cell      ${Cell}
    Set Browser Implicit Wait    2s
    Save User
    Capture page screenshot     ../Screenshots/Completed.png
