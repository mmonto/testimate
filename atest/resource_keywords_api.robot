*** Settings ***
Documentation       this is documentation...

*** Keywords ***
Teardown
    Output schema
    Output  $.email
    Output  response body     ${OUTPUTDIR}/new_user.demo.json
    Rest instances  ${OUTPUTDIR}/all_instances_demo.json  # all the instances so far