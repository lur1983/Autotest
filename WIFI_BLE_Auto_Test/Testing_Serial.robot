*** Settings ***
Documentation     Checking AT Command
Test Setup        Suite test setup
Test Teardown     Suite test teardown
Library           SerialportLibrary.py

*** Test Cases ***
Send AT Command
    [Documentation]    Sending AT command, \ The returned value should be OK
    [Timeout]    5 seconds
    Given serial port is available
    When user sends "AT"
    Then result is "OK"

Send AT+CFUN Command

*** Keywords ***
serial port is available
    Open serial port

user sends "${command}"
    Send Command    ${command}

result is "${expected}"
    Result should be    ${expected}

Suite test setup
    Initialize for each test case

Suite test teardown
    Teardown each test case
