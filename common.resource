*** Settings ***
Variables   common_variables.py

*** Keywords ***

Custom Resource
    [Arguments]  ${answer}
    Wait Until Element is Visible   //*[@id="root"]/div[4]/div[1]/input
    Text Input  ${chat_elem}    ${answer}
