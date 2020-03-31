*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    file:///C:/Users/ytran/robotframework/dropdown.html    Chrome
    Select From List By Index    name:months    5
    Select From List By Label    name:days    17
    Select From List By Value    name:year    17
