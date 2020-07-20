*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FORM URL}      http://www.way2automation.com/angularjs-protractor/webtables/
${BROWSER}      chrome


*** Keywords ***
Open Chrome Browser
    Open browser    ${FORM URL}     ${BROWSER}
    Maximize browser window

Close Open Browser
    Close browser

Add New User
    Click element  xpath:/html/body/table/thead/tr[2]/td/button

Input First Name
    [Arguments]  ${FirstName}
    Input text  name:FirstName    ${FirstName}

Input Last Name
    [Arguments]  ${LastName}
    Input text  name:LastName   ${LastName}

Input User Name
    [Arguments]  ${UserName}
    Input text  name:UserName   ${UserName}

Input Password Name
    [Arguments]  ${Password}
    Input text  name:Password   ${Password}

Input Customer
    [Arguments]  ${Customer}
    Select radio button     optionsRadios   ${Customer}

Input Role
    [Arguments]  ${Role}
    Select from list by value   RoleId  ${Role}

Input Email
    [Arguments]  ${Email}
    Input text  name:Email  ${Email}

Input Cell
    [Arguments]  ${Cell}
    Input text  name:Mobilephone  ${Cell}

Save User
    Click element    css:body > div.modal.ng-scope > div.modal-footer > button.btn.btn-success

Home Page Should Be Open
    Title Should Be    Protractor practice website - WebTables