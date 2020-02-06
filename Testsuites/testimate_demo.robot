*** Settings ***
Documentation     Testimate demo testsuite.
...
...               Pre-requirements: ..
Suite Setup
Test Timeout      1 minutes

Resource          ../Resources/library.robot

*** Test Cases ***
Connect to Testimate
    [Documentation]    Connect to Testimate website.
    [Tags]    TC001
    [Timeout]    3 minutes
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Validate page
    Close Browser


