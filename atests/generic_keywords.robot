*** Settings ***
Documentation    		Generic keywords.
...  			 		These keywords should be used across different areas.
Resource         		variables.robot

*** Keywords ***
#----------------------------------------------------
# Miscellaneous
#----------------------------------------------------
Wait
	[Documentation]		Used to set a standart timeout for Wait Until Element Is Visible / Wait Until Element Is Not Visible keywords.
 	[Arguments]     	${keyword}      	${argument}   
    Wait Until Keyword Succeeds       30 sec    2 sec       ${keyword}    	${argument}
#----------------------------------------------------
# Browser setup
#----------------------------------------------------
I open the browser
	[Documentation]		Used to setup browser.
	Open Browser        						about:blank    					Chrome
    Maximize Browser Window

#----------------------------------------------------
# Browser setup - Responsive
#----------------------------------------------------
I open mobile browser
	[Documentation]		Used to open the browser and setting it to mobile responsive.
	[Arguments]			${device}
	Open Browser                        		about:blank             		Chrome
	Set responsive								${device}

#----------------------------------------------------
# HomePage
#----------------------------------------------------
I enter Facile URL
	[Documentation]		Used to go to Facile Home Page.
	Go To 										${DEV_URL}

I land on Facile Home Page
	[Documentation]		Used to check the Home Page is correctly displayed.
	Wait 										Element Should Be Visible			${FACILE_LOGO}

I click on submenu label
	[Documentation]		Used to hover over a label in the navbar and click on the submenu label.
	[Arguments]									${navbar_label}						${submenu_label}
	Mouse Over        							${navbar_label}
	Wait 										Element Should Be Visible			${submenu_label}
	Click Element								${submenu_label}

#----------------------------------------------------
# HomePage - Responsive
#----------------------------------------------------
I land on Facile Mobile Home Page
	[Documentation]		Used to check the Home Page is correctly displayed.
	#checks hamburger menu is visible
	Wait 										Element Should Be Visible			id:action
	#checks cookie alert is visible
	Wait 										Element Should Be Visible			css:div.cookie-alert
	#closes cookie alert
	Click Element 								//*[@id="ZZ_body"]/div[1]/p[2]/a

I click on the hamburger menu
	[Documentation]		Used to click on the hamburger menu.
	Click Element 								id:action

I see sidebar menu
	[Documentation]		Used to check sidebar menu is correctly displayed when clicking on the hamburger menu.
	Wait 										Element Should Be Visible			id:ZZ_upper_menu

I select Assicurazioni from sidebar menu
	[Documentation]		Used to select Assicurazioni from sidebar menu.
	Click Element								${ASSICURAZIONI}
	Wait 										Element Should Be Visible			class:ZZ_sub_menu.show

#----------------------------------------------------
# Results Pages
#----------------------------------------------------
I click first result VAI button
	[Documentation]		This is used to click the VAI button of the first result in the results list.
	Wait 										Element Should Not Be Visible		${SPINNER}
	Click Element								${FIRST_VAI}
	Select Window  								new

I click second result VAI button
	[Documentation]		This is used to click the VAI button of the first result in the results list.
	Wait 										Element Should Not Be Visible		${SPINNER}
	Click Element								${SECOND_VAI}
	Select Window  								new

I land on the selected partner webpage
	[Documentation]		This is used to check clicking on the VAI button correctly takes the user to the partner webpage.
	...					Since we don't know where the user will land, but it's got to be some external URL, we just check our logo is not contained in the new page.
    Page Should Not Contain						${FACILE_LOGO}

I click Invia Preventivo button
	[Documentation]		This is used to click Invia Preventivo via email button in Conti Correnti Results Page.
	Wait 										Element Should Be Visible			${INVIA_PREVENTIVO}
	Click Element								${INVIA_PREVENTIVO}

I see Invia Preventivo overlay
	[Documentation]		This is used to check Invia Preventivo overlay is correctly displayed when clicking Invia Preventivo button.
	Wait 										Element Should Be Visible			${INVIA_PREVENTIVO_POPUP}

I click Prosegui button
	[Documentation]		This is used to click Prosegui button in Iniva Preventivo overlay.
	Click Element								${INVIA_BUTTON}

I see empty fields error messages
	[Documentation]		This is used to check error messages are displayed for Nome e Cognome and Email fields when left emtpy.
	Element Should Contain						//*[@id="CMB_conti_deposito"]/div[1]/span							Inserisci nome e cognome
	Element Should Contain						//*[@id="CMB_conti_deposito"]/div[2]/span							Inserisci una mail valida

I click Informativa Privacy link
	[Documentation]		This is used to click Informativa Privacy textlink in Invia Preventivo overlay.
	Click Element 								${INFORMATIVA_PRIVACY_LINK}
	Select Window 								new

I land on Informativa Privacy Page
	[Documentation]		This is used to check the user lands on correct page when clicking Informativa Privacy textlink.
	Location Should Contain 					${INFORMATIVA_PRIVACY_PAGE}

I click Close in Invia Preventivo overlay
	[Documentation]		This is used to close Invia Preventivo overlay.
	Wait 										Element Should Be Visible			${INVIA_PREVENTIVO_POPUP}
	Click Element								${INVIA_PREVENTIVO_CLOSE}

Invia Preventivo overlay should be closed
	[Documentation]		This is used to check overlay is closed when clicking the close icon.
	Wait 										Element Should Not Be Visible		${INVIA_PREVENTIVO_POPUP}

#----------------------------------------------------
# Results Pages - Responsive
#----------------------------------------------------
I click first result
	[Documentation]		This is used to click the first result in the results list.
	Wait 										Element Should Not Be Visible		${SPINNER}
	Click Element								${FIRST_RESULT_MOBILE}
	Select Window  								new

I click second result
	[Documentation]		This is used to click the second result in the results list.
	Wait 										Element Should Not Be Visible		${SPINNER}
	Click Element								${SECOND_RESULT_MOBILE}
	Select Window  								new

I click on Modifica button
	[Documentation]		This is used to click Modifica button on mobile results page.
	#Click Element does not work with either xpath or css selector, so I used this instead
	Execute Javascript 							document.querySelector('h2.collapse').click();

I see filter menu
	[Documentation]		This is used to check filter menu is correctly expanded when clicking Modifica button.
	Wait 										Element Should Be Visible			id:ricalcola-link

I click on Chiudi button
	[Documentation]		This is used to click Chiud button on mobile results page.
	#Click Element does not work with either xpath or css selector, so I used this instead
	Execute Javascript 							document.querySelector('h2.collapse').click();

I cannot see filters menu
	[Documentation]		This is used to check filter menu is correctly collapsed when clicking Chiudi button.
	Wait 										Element Should Not Be Visible		id:ricalcola-link