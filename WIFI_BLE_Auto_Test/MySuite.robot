*** Settings ***
Test Template     Calculate
Library           CalculatorLibrary.py

*** Test Cases ***    expression    expected
addition              1 + 1         2

*** Keywords ***
Calculate
    [Arguments]    ${expression}    ${expected}
    Push buttons    C${expression}=
    Result should be    ${expected}
