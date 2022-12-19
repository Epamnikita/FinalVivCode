
Description: Checking login homepage for trello.com

Scenario: Login to trello home page with valid credentials
When I login into trello app with `epamnikita@gmail.com` and `epamnikita@2022`
When I wait until element located `By.xpath(//a[@aria-label='Back to home'])` appears
When I click on element located `By.xpath(//button[@aria-label='Open member menu']`
When I click on element located `By.xpath(//button[@data-testid='header-member-menu-logout'])`
When I click on element located `By.xpath(//button[@id='logout-submit'])`
When I wait until element located `By.xpath(//a[@href='/signup']/preceding-sibling::a)` appears


Scenario: Login to trello home page with invalid credentials
When I login into trello app with `epamnikita@gmail.com` and `epamnikita@2022`
And I wait until element located `By.xpath(//div[@id="login-error"])` appears
