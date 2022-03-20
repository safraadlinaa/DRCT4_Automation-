*** Settings ***
Library     SeleniumLibrary
Resource    kword.robot

*** Variable ***
${login_btn}    //*[@id="root"]/div[1]/div/div/a[1]/div
${signup_btn}   //*[@id="root"]/div[1]/div/div/a[2]/div
${to_market}    //*[@id="root"]/div[1]/a[4]
${to_dashb}     //*[@id="Dashboard"]
${loader}       //*[@id="root"]/div[3]/div/div[3]/div/div[3]/div

*** Test Cases ***
Open Hikers
    [Documentation]     opening hikers website
    Open Hikers
    Scroll Page
    Signup
    Login
    Wallet Reload
    Charts
    Market Buy
    Market Sell
    profile change detail
    Logout


#    Click element   ${signup_btn}
#    Click element   ${login_btn}
#    Click element  ${to_market}
#    Click element    ${to_dashb}

#    Close browser