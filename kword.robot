*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
#Library           RPA.Robocorp.Vault


*** Keywords ***
Open Hikers  #working
    Open Browser    https://tradehikers.xyz/    chrome
    Maximize Browser Window
    Set selenium speed    2 seconds
    Wait until element contains     //*[@id="root"]/div[1]/div/div/a[1]/div     Login     20

Scroll Page  #working
    Scroll element into view    //*[@id="root"]/div[2]/section[2]/div[2]/iframe
    Scroll element into view    //*[@id="root"]/div[2]/section[3]/div[2]/div[1]
    Scroll element into view    //*[@id="root"]/div[2]/section[3]/div[2]/div[3]
    Scroll element into view    //*[@id="root"]/div[2]/footer

Signup   #working
#    [arguments]     ${my_email}   ${my_pw}
    click element   ${signup_btn}   #signuo btn
    Input text      //*[@id="root"]/div/div[2]/div/div[3]/form/input[1]   Safra
    Input text      //*[@id="root"]/div/div[2]/div/div[3]/form/input[2]   Safra Sam
    Input text      //*[@id="root"]/div/div[2]/div/div[3]/form/input[3]   safrasam011@gmail.com          #${my_email}
    Input password  //*[@id="root"]/div/div[2]/div/div[3]/form/input[4]   zxcvbnm123          #${my_pw}
    Input password  //*[@id="root"]/div/div[2]/div/div[3]/form/input[5]   zxcvbnm123          #${my_pw}
    Click element   //*[@id="create-acc"]/button
    Wait until element contains   //*[@id="root"]/div/div[1]/div[2]/div/div[3]/button   Login  30
    Click element   //*[@id="root"]/div/div[1]/div[2]/div/div[3]/button


Login       #working
#    [arguments]     ${email}   ${pw}
#    Click element   ${login_btn}
    Input text      //*[@id="root"]/div/div[2]/div/form/input[1]    safrasam011@gmail.com  #${email}
    Input password  //*[@id="root"]/div/div[2]/div/form/input[2]    zxcvbnm123  #${pw}
    Click element   //*[@id="root"]/div/div[2]/div/form/button
#redirected to dashboard

Wallet Reload       #working
    #wallet reload $
#    Click element   ${to_dashb}    #to dbrd
    Wait until element contains   //*[@id="root"]/div[3]/div[2]/div[6]   Balance   20
    Click element   //*[@id="root"]/div[3]/div[2]/div[6]/img    #reload
    Input text      //*[@id="root"]/div[3]/div[1]/div[2]/div/div[1]/input   10000
    Click element   //*[@id="root"]/div[3]/div[1]/div[2]/div/div[2]/button  #reload btn
    Click element   //*[@id="root"]/div[3]/div[1]/div[2]/div/div[2]/span    #cancel btn

Charts  #working
    #assets
    Click element   //*[@id="root"]/div[3]/div[2]/div[7]/div[1]/div[2]/div/div/div  #dropdown
    Wait until element contains     //*[@id="menu-"]/div[3]/ul    Total   #dropdown list
    Click element   //*[@id="menu-"]/div[3]/ul/li[2]
    #p/l
    Click element   //*[@id="root"]/div[3]/div[2]/div[7]/div[1]/div[2]/div/div/div  #dropdown
    Wait until element contains     //*[@id="menu-"]/div[3]/ul    Total   #dropdown list
    Click element   //*[@id="menu-"]/div[3]/ul/li[1]   #change chart


Market Buy   #working
    Click element   ${to_market}
    Wait until element does not contain     ${loader}     loader      60
    Click element   //*[@id="root"]/div[3]/div/div[3]/div/div[1]/div[1]/img     #crypto dropdown
    Click element   //*[@id="root"]/div[3]/div/div[3]/div/div[1]/div[2]/div[2]  #change crypto
    Wait until element does not contain     ${loader}      30 seconds  #loader
    Click element   //*[@id="root"]/div[3]/div/div[3]/div/div[2]/div[2]/div/button[3]    #filter
    Input text  //*[@id="mui-5"]    1   #qty
    Click element   //*[@id="full-width-tabpanel-0"]/div/span/div[2]/button     #buy btn

Market Sell   #working
#    Click element   ${to_market}
    Wait until element does not contain     ${loader}      60 seconds   #loader
    Click element   //*[@id="root"]/div[3]/div/div[3]/div/div[1]/div[1]/img     #crypto dropdown
    Click element   //*[@id="root"]/div[3]/div/div[3]/div/div[1]/div[2]/div[2]  #change crypto
    Wait until element does not contain     ${loader}      30 seconds  #loader
    Click element   //*[@id="full-width-tab-1"]     #sell tab
    Input text  //*[@id="mui-8"]    10   #qty
    Click element   //*[@id="full-width-tabpanel-1"]/div/span/div[2]/button   #sell btn


Select Crypto  #working
    Click element   //*[@id="root"]/div[3]/div/div[3]/div/div[1]/div[1]/img     #crypto dropdown
    Click element   //*[@id="root"]/div[3]/div/div[3]/div/div[1]/div[2]/div[2]  #change crypto
    Wait until element does not contain     ${loader}      60 seconds  #loader

profile change detail  #working
    Click element    //*[@id="DP"]
    Wait until element contains     //*[@id="root"]/div[3]/div/div[3]/div[2]/div[2]     Date joined   20
    Input text    //*[@id="root"]/div[3]/div/div[3]/form/div[5]/input    0119092332
    Click element   //*[@id="root"]/div[3]/div/div[3]/form/div[8]/button   #save btn

Change Password   #issue with clicking icon
    Click element    //*[@id="root"]/div[3]/div/div[3]/form/div[7]/div[2]/span/svg/path   #edit btn
    Wait until element contains     //*[@id="root"]/div[3]/div/div[2]/div[2]/div/h3     Change    20
    Input password      //*[@id="root"]/div[3]/div/div[2]/div[2]/div/form/div[1]/input    zxcvbnm123
    Input password      //*[@id="root"]/div[3]/div/div[2]/div[2]/div/form/div[2]/input    qwerty12345
    Input password      //*[@id="root"]/div[3]/div/div[2]/div[2]/div/form/div[3]/input    qwerty12345
#    Click element       //*[@id="root"]/div[3]/div/div[2]/div[2]/div/form/div[4]/button     #change pwd
#    Click element    //*[@id="root"]/div[3]/div/div[3]/form/div[8]/button    #save btn


Logout
    Click element    //*[@id="Logout"] #logout btn