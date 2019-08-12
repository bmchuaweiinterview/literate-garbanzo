*** Settings ***
Library         Selenium2Library
Test Setup      Open Browser And Go To Page
Test Teardown   Close Browser


*** Variables ***
${FORM_URL}   https://www.amazon.com
${Product}   Nikon
${Search_txt_box_Xpath}	Xpath=//*[@id="twotabsearchtextbox"]
${Search_btn_Xpath}	Xpath=/html/body/div[1]/header/div/div[1]/div[3]/div/form/div[2]/div/input
${Second_Nikon_item_Xpath}	Xpath=/html/body/div[1]/div[1]/div[1]/div[2]/div/span[3]/div[1]/div[2]/div/div/div/div[2]/div[2]/div/div[1]/div/div/div/h2/a/span
${Sort_By_Drop_down_Xpath}	Xpath=/html/body/div[1]/div[1]/span/h1/div/div[2]/div/div/span/form/span/span/span/span/span[2]
${Product_Title_Xpath}	Xpath=//*[@id="productTitle"]
${Sort_HighLow_Xpath}	Xpath=//*[@id="s-result-sort-select_2"]

 
*** Test Cases ***
NikonTest
    Wait Until Element Is Visible	 ${Search_txt_box_Xpath}
    Input Text	 ${Search_txt_box_Xpath}	Nikon
    Click Button	${Search_btn_Xpath}
    Wait Until Element Is Visible	${Sort_By_Drop_down_Xpath}
    Mouse Over	${Sort_By_Drop_down_Xpath}
    Click Element	${Sort_By_Drop_down_Xpath}
    Wait Until Element Is Visible	${Sort_HighLow_Xpath}
    Click Element	${Sort_HighLow_Xpath}
    Wait Until Element Is Visible	${Second_Nikon_item_Xpath}
    Click Element	${Second_Nikon_item_Xpath}
    Wait Until Element Is Visible	${Product_Title_Xpath}	
    Element Should Contain	${Product_Title_Xpath}		Nikon D5 DSLR 

 
*** Keywords ***
Open Browser And Go To Page
  Open Browser    ${FORM_URL}

