*** Settings ***
Documentation     Testimate Docker demo testsuite.
...
...               Pre-requirements: ..
Suite Setup       Suite Setup
Suite Teardown    Suite Teardown
Test Timeout      5 minutes

Resource          library.robot

*** Test Cases ***
Connect to Testimate
    [Documentation]    Connect to Testimate website.
    [Tags]    DOCKER001
    [Setup]     Test Case Setup
    [Timeout]    3 minutes
    [Teardown]      Test Case Teardown
    Validate page





