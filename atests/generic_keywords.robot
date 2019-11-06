*** Keywords ***
I open mobile browser
	[Documentation]		Used to open the browser and setting it to mobile responsive.
	[Arguments]			${device}
	#Open Browser 				about:blank 				Chrome
	Set responsive								${device}

I enter Google URL
	[Documentation]		Used to go to Facile Home Page.
	Go To 										https://www.google.com/

I land on Google Mobile Home Page
	[Documentation]		Used to check user lands on Google Mobile Home page.
	Wait Until Element Is Visible  				id:main

I click search text field
	[Documentation]		Used to click textfield.
	Click Element 								id:main
	Wait Until Element Is Visible 				class:zGVn2e

I input keyword
	[Documentation]		Used to enter searched keyword.
	Input Text 									class:gLFyf  					cute dogs

I select first result
	[Documentation]		Used to select first search result.
	Press Keys 									None          RETURN              RETURN

Search results is displayed
	[Documentation]		Used to check I land on results page.
	Wait Until Element Is Visible    			id:gsr