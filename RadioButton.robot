*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    file:///C:/Users/ytran/robotframework/radiobutton.html    Chrome
    Select Radio Button    gender    female
