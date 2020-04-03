*** Settings ***
Library           DatabaseLibrary

*** Variables ***
@{database}       pymysql    Testing    root    password    localhost    3306

*** Test Cases ***
TC1
    Connect To Database    @{database}
