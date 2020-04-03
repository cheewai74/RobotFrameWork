*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${browser}        chrome
${url}            https://www.tutorialspoint.com/index.htm

*** Keywords ***
Test Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
