
*** Keywords ***
Login
    [Arguments]     ${email}    ${password}     ${fComp}
    Open Browser    https://app.interactiveads.ai/    chrome
    Input Text    name:email    otto.kuparsaari@leadoo.com
    Input Text    name:password    ${password}
    Click button    class=btn
    ${c} =   Get Element Count   class=btn
    Wait Until Element Contains  ${fComp}   ${nameInput}  timeout=10
    Click Element   ${fComp}
Open Preview
    Go To   https://app.interactiveads.ai/bot/chat
    Wait Until Element is Visible    ${preview}
    Click Element    ${preview}
    Wait Until Element is Visible   ${previewWindow}
