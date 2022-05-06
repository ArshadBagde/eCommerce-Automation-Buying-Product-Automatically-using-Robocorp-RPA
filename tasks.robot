*** Settings ***
Documentation     Robot that logs into the RobobtSparebinInduatries Intranet
...               Template robot main suite.
#Library          RPA.Browser.Selenium    auto_close=${FALSE}
Library           RPA.Browser
Library           RPA.Desktop.Windows
Library           Process
Library           RPA.Robocorp.Vault
Library           RPA.Robocorp.Vault.FileSecrets
Library           Collections

*** Tasks ***
Open the intranet websites
    Open the intranet websites
    Log in
    Open the search Option
    Select Samsung Mobile for Order
    Buy Samsung Mobile
    Click On Buy Now WithOut Exchange
    Buy Product Now
    Select a payment method
    Continue Payment

*** Keywords ***
Open the intranet websites
    Open Available Browser    https://www.amazon.in/ap/signin?openid.pape.max_auth_age=900&openid.return_to=https%3A%2F%2Fwww.amazon.in%2Fgp%2Fyourstore%2Fhome%3Fpath%3D%252Fgp%252Fyourstore%252Fhome%26signIn%3D1%26useRedirectOnSuccess%3D1%26action%3Dsign-out%26ref_%3Dnav_AccountFlyout_signout&openid.assoc_handle=inflex&openid.mode=checkid_setup&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0
    Maximize Browser Window

Log in
    Input Text    email    abagde61@gmail.com
    Submit Form
    Input Password    password    xxxxxxxxxxxx
    Submit Form
    #Wait Until Page Contains Element    id:order-form

Open the search Option
    Click Element When Visible    xpath://*[@id="twotabsearchtextbox"]
    Input Text    xpath://*[@id="twotabsearchtextbox"]    Samsung Mobiles
    Wait And Click Button    xpath://*[@id="nav-search-submit-button"]
    #Wait Until Element Is Visible    xpath://*[@id="nav-search-submit-button"]

Select Samsung Mobile for Order
    Click Element When Visible    xpath://*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[4]/div/div/div/div/div/div/div/div[2]/div/div/div[1]/h2/a/span

Buy Samsung Mobile
    Wait Until Element Is Visible    xpath://*[@id="ppd"]
    Wait Until Element Is Visible    xpath://*[@id="newAccordionRow"]

Click On Buy Now WithOut Exchange
    Click Element When Visible    xpath://*[@id="newAccordionRow"]/div/div[1]/a/h5/div[1]/div
    Click Button    xpath://*[@id="newAccordionRow"]/div/div[1]/a/i

Buy Product Now
    Wait Until Element Is Visible    xpath://*[@id="buy-now-button"]
    Wait And Click Button    xpath://*[@id="newAccordionRow"]/div/div[1]/a/i
    Click Button    xpath://*[@id="buy-now-button"]

Select a payment method
    Wait Until Element Is Visible    xpath://*[@id="pp-LNOe11-122"]/div/div/div/div/div[2]/div[1]/div/span[1]
    Click Button    xpath://*[@id="pp-LNOe11-123"]

Continue Payment
    Wait Until Element Is Visible    xpath://*[@id="pp-LNOe11-125"]/div/div
    Click Button    xpath://*[@id="pp-LNOe11-126"]/span/input

Review Order
    Wait Until Element Is Visible    xpath://*[@id="spc-desktop"]/div[2]
    Wait Until Element Is Visible    xpath://*[@id="order-summary-box"]/div[1]
    Click Button    xpath://*[@id="placeYourOrder"]/span/input

Minimal task
    Log    Done.

Vault


*** Tasks ***
Reading secrets
    ${secret}=    Get Secret    swaglabs
    Log Many    ${secret}

Modifying secrets
    ${secret}=    Get Secret    swaglabs
    ${level}=    Set Log Level    NONE
    Set To Dictionary    ${secret}    username    nobody
    Set Log Level    ${level}
    Set Secret    ${secret}
