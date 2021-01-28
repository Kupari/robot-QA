*** Settings ***
Library           SeleniumLibrary
Variables         login_variables.py
Variables          common_variables.py

*** Test Cases ***
Login and Bot Preview
    Open Browser    https://app.interactiveads.ai/signin    chrome
    Input Text    name:email    otto.kuparsaari@leadoo.com
    Input Text    name:password    ${password}
    Click button    class=btn
    ${c} =   Get Element Count   class=btn
    Run Keyword If   ${c}>1    Click Element    class=btn
    Go To   https://app.interactiveads.ai/bot/chat
    Wait Until Element is Visible    ${preview}
    Click Element    ${preview}
    Wait Until Element is Visible   ${previewWindow}
    #Run Keyword If
    Wait Until Element is Visible   ${answer}  
    Element Text Should Be   ${answer}   ${makkara}
# AnswerChat
#     Open Browser    http://127.0.0.1:8000/about    chrome
#     Wait Until Element is Visible   css:div#root.inpage
