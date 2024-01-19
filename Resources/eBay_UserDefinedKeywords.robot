*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Filter basic results by condition
    Click element  //span[@class='btn__cell']//span[contains(text(),'Condition')]
    Press Keys  //span[normalize-space()='New']  [Return]
    Sleep  3s

Advanced Search Form Input and Search

    Input Text  //*[@id="_nkw"]  mobile
    Click Element  //*[@id="s0-1-17-4[0]-7[1]-_in_kw"]/option[3]
    Input Text  //*[@id="_ex_kw"]  iphone
    Input Text  //*[@id="s0-1-17-5[2]-@range-comp[]-@range-textbox[]-textbox"]  10  #price min
    Input Text  //*[@id="s0-1-17-5[2]-@range-comp[]-@range-textbox[]_1-textbox"]  99  #price max
    Click Element  //*[@id="s0-1-17-6[3]-[2]-LH_BIN"]  #Buying Format
    Click Element  //*[@id="s0-1-17-6[4]-[1]-LH_ItemCondition"]  #used
    Click Element  //*[@id="s0-1-17-6[7]-5[@field[]]_1-_saact"]  #aviable to...
    Click Element  //*[@id="s0-1-17-6[7]-5[@field[]]_1-_saact"]/option[155]
    Click Element  //*[@id="s0-1-17-8[9]-1[2]-_ipg"]  #results per page
    Click Element  //*[@id="s0-1-17-8[9]-1[2]-_ipg"]/option[3]  #120

    Click Element  //html/body/div[2]/div/main/form/div[2]/button   #search
    Sleep  3

Verify advanced search results
    Checkbox Should Be Selected  //*[@id="x-refine__group__1"]/ul/li[2]/div/a/div/span/input  #used
    Should Contain Text  //*[@id="s0-53-16-0-1-2-2-7[3]-textrange-beginParamValue-textbox"]  10  #price min
    Should Contain Text  //*[@id="s0-53-16-0-1-2-2-7[3]-textrange-endParamValue-textbox"]  99  #pricer max
    Should Contain Text  //*[@id="s0-53-16-6-3-4[0]-2-2-1-list"]/li[3]/div/a/div  Available to Portugal
    #120 na stronbie