*** Settings ***
Documentation     Testimate demo testsuite.
...
...               Pre-requirements: ..
Suite Setup       Suite Setup
Suite Teardown    Suite Teardown
Test Timeout      2 minutes

Resource          ../resources/library.robot

*** Test Cases ***
Connect to Testimate
    [Documentation]    Connect to Testimate website.
    [Tags]    TC001
    [Setup]     Test Case Setup
    [Timeout]    2 minutes
    [Teardown]      Test Case Teardown
    #Test Link validity
    #Log Many    @{WORDS}[1]
    Validate page    Input
    Siirry Mobiilitestaus sivulle       Mobiilisovellusten testaus
    Go Back





