*** Settings ***
Documentation    		Assicurazione Cane e Gatto keywords.
...  			 		These keywords should be used by Cane e Gatto tests.
Resource         		variables.robot
Resource         		generic_keywords.robot

*** Keywords ***
I am in Assicurazione Cane e Gatto Landing Page
	[Documentation]		This is used to get to Assicurazione Cane e Gatto Landing Page through the navbar menu.
    I click on submenu label					${ASSICURAZIONI}		${ASSICURAZIONE_CANE_E_GATTO}
    Location Should Contain 					${CANE}

I click Confronta OFFERTE button
	[Documentation]		This is used to click the button in Assicurazione Cane e Gatto Landing Page.
	Click Element								${PREVENTIVO_BUTTON}

I land on Assicurazione Cane e Gatto Results Page
	[Documentation]		This is used to make sure the user lands on Assicurazione Cane e Gatto Results Page when clicking the button in Assicurazione Cane e Gatto Landing Page.
	Location Should Contain						${RISULTATI_CANE}

#----------------------------------------------------
# Responsive
#----------------------------------------------------
I select Assicurazione Cane e Gatto from Assicurazioni sub-menu
	[Documentation]		This is used to select Assicurazione Cane e Gatto from Assicurazioni sub-menu.
	Scroll Element Into View 					${ASSICURAZIONE_CANE_E_GATTO}
	Click Element 								${ASSICURAZIONE_CANE_E_GATTO}

I land on Assicurazione Cane e Gatto Mobile Landing Page
	[Documentation]		This is used to make sure the user can access Cane e Gatto Mobile Landing Page.
	Location Should Contain 					${CANE}