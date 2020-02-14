*** Settings ***
Library         FakerLibrary
Documentation       this is documentation...

*** Keywords ***
FakerLibrary Data Generation
    ${data}=    FakerLibrary.Name
    Log    value: ${data}
    Set Test Variable    ${data}    ${data}

Response Validations
    String    response body name    ${data}
    Integer     response body id          11

Suite Setup
    Clear Expectations
    #Output schema    response body   ${OUTPUTDIR}/schema_demo.json
    #Expect Response Body    ${OUTPUTDIR}/schema_demo.json
    #Expect Response Body    { "required": [ "address","company","email","id","name","phone","username","website"] }

Teardown
    #Output  $.email
    #Output  response body     ${OUTPUTDIR}/new_user_[${data}].json
    Rest instances  ${OUTPUTDIR}/all_instances_demo.json  # all the instances so far