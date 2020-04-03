*** Settings ***
Library           DatabaseLibrary

*** Variables ***
${dbname}         testing
${dbuser}         root
${dbpasswd}       password
${dbhost}         localhost
${dbport}         3306
@{queryResults}

*** Test Cases ***
TC1
    [Documentation]    Connect To Database \ \ \ MySQLdb \ \ \ my_databse \ \ \ user \ \ \ password \ \ \ db.host.example \ \ \ port
    Connect To Database    pymysql    ${dbname} user ${dbpasswd} ${dbhost} ${dbport}
    Table Must Exist    customer
    Check If Exists In Database    SELECT * FROM customer
    @{queryResults}    QUERY    SELECT * FROM customer
    Log    @{queryResults}[0]
