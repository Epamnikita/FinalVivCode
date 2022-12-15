Description: checking login homepage for trello.com

Scenario: login to trello home page with valid credentials 
Given I am on a page with the URL 'https://trello.com/login'
And I wait until element located `//input[@id='user']` appears
When I type `<userid>` in field located `//input[@id='user']`
And I click on element located `//input[@id='login']`
When I type `<password>` in field located `//input[@id='password']`
And I click on element located `//button[@id='login-submit']`
And I wait until element located `//a[@aria-label='Back to home']` appears
When I click on element located `//*[@id="header"]/div[3]/div[5]/button`
When I click on element located `//button[@data-testid='header-member-menu-logout']`
When I click on element located `//button[@id='logout-submit']`
And I wait until element located `//*[@id="BXP-APP"]/header[2]/div[1]/div/a` appears

Examples: 
|userid|paasword|
|epamnikita@gmail.com|epamnikita@2020|

Scenario: login to trello home page with invalid credentials 
Given I am on a page with the URL 'https://trello.com/home'
When I type `<userid>` in field located `//input[@id='user']`
And I click on element located `//input[@id='login']`
When I type `<password>` in field located `//input[@id='password']`
And I click on element located `//button[@id='login-submit']`
And I wait until element located `//div[@id="login-error"]` appears

Examples: 
|userid|paasword|
|epamnikita@gmail.com|epamnikita@2022|
  

