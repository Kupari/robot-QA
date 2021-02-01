*** Settings ***
Library           SeleniumLibrary
Variables         login_variables.py
Variables         common_variables.py
Resource          common.robot

*** Test Cases ***
Login and Bot Preview

    Login  otto.kuparsaari@leadoo.com  ${password}  ${fComp}
    Open Preview























    # Open Browser    https://app.interactiveads.ai/    chrome
    # Input Text    name:email    otto.kuparsaari@leadoo.com
    # Input Text    name:password    ${password}
    # Click button    class=btn
    # ${c} =   Get Element Count   class=btns
    # Wait Until Element Contains  ${fComp}   ${nameInput}  timeout=10
    # Click Element   ${fComp}
    # Go To   https://app.interactiveads.ai/bot/chat
    # Wait Until Element is Visible    ${preview}
    # Click Element    ${preview}
    # Wait Until Element is Visible   ${previewWindow}


    # Wait Until Element is Visible   ${previewWindow}
    # #Run Keyword If
    # Wait Until Element is Visible   ${answer}  
    # Element Text Should Be   ${answer}   ${makkara}
# AnswerChat
#     Open Browser    http://127.0.0.1:8000/about    chrome
#     Wait Until Element is Visible   css:div#root.inpage
