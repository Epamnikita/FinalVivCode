Description: checking login homepage for trello.com

Scenario: login to trello home page with valid credentials 
Given I am on a page with the URL 'https://trello.com/home'
When I wait until element located `By.xpath(//*[@id="BXP-APP"]/header[1]/div/div[1]/div[2]/a[1])` appears
When I click on element located `By.xpath(//*[@id="BXP-APP"]/header[1]/div/div[1]/div[2]/a[1])`
When I wait until element located `By.xpath(//input[@id='user'])` appears
When I type `epamnikita@gmail.com` in field located `By.xpath(//input[@id='user'])`
When I click on element located `By.xpath(//input[@id='login'])`
When I type `<password>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//button[@id='login-submit'])`
When I wait until element located `By.xpath(//a[@aria-label='Back to home'])` appears
When I click on element located `By.xpath(//*[@id="header"]/div[3]/div[5]/button)`
When I click on element located `By.xpath(//button[@data-testid='header-member-menu-logout'])`
When I click on element located `By.xpath(//button[@id='logout-submit'])`
When I wait until element located `By.xpath(//*[@id="BXP-APP"]/header[2]/div[1]/div/a)` appears

Examples: 
|userid|paasword|
|epamnikita@gmail.com|epamnikita@2020|

Scenario: login to trello home page with invalid credentials 
Given I am on a page with the URL 'https://trello.com/home'
When I type `<userid>` in field located `By.xpath(//input[@id='user'])`
And I click on element located `By.xpath(//input[@id='login'])`
When I type `<password>` in field located `By.xpath(//input[@id='password'])`
And I click on element located `By.xpath(//button[@id='login-submit'])`
And I wait until element located `By.xpath(//div[@id="login-error"])` appears

Examples: 
|userid|paasword|
|epamnikita@gmail.com|epamnikita@2022|