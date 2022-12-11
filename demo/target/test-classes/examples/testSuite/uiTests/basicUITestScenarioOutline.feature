Feature: Basic UI Tests-Scenarios Outline

Background:
  * configure driver = { type: 'chrome', showDriverLog: true }
@basicUITestScenarioOutlineExamples
Scenario Outline:  UI tests for Saucedemo site with Example Values

  Given driver 'https://www.saucedemo.com/'
  And driver.maximize()
  And input('#user-name', <username>)
  And input('#password', <password>)
  When click("input[name=login-button]")
  Then match  driver.url == 'https://www.saucedemo.com/inventory.html'
  * highlight('#react-burger-menu-btn')
  Then click('#react-burger-menu-btn')
  Then click('#logout_sidebar_link')
  Then match  driver.url == 'https://www.saucedemo.com/'

  Examples:
  | username        | password  |
  | 'standard_user'   | 'secret_sauce' |
  | 'sproblem_userpa' | 'secret_sauce'  |

@basicUITestScenarioOutlineJson
Scenario Outline:  UI tests for Saucedemo site with Read JSON

  Given driver 'https://www.saucedemo.com/'
  And driver.maximize()
  And input('#user-name', <username>)
  And input('#password', <password>)
  When click("input[name=login-button]")
  Then match  driver.url == 'https://www.saucedemo.com/inventory.html'
  * highlight('#react-burger-menu-btn')
  Then click('#react-burger-menu-btn')
  Then click('#logout_sidebar_link')
  Then match  driver.url == 'https://www.saucedemo.com/'

  Examples:
  | read('../uiTests/data/sauceuser.JSON') |

@basicUITestScenarioOutlineCSV
Scenario Outline:  UI tests for Saucedemo site with Read CSV

  Given driver 'https://www.saucedemo.com/'
  And driver.maximize()
  * def userid = <username>
  * def password = <password>
  * print userid
  And input('#user-name', userid)
  And input('#password', password)
  When click("input[name=login-button]")
  Then match  driver.url == 'https://www.saucedemo.com/inventory.html'
  * highlight('#react-burger-menu-btn')
  Then click('#react-burger-menu-btn')
  Then click('#logout_sidebar_link')
  Then match  driver.url == 'https://www.saucedemo.com/'

  Examples:
  | read('../uiTests/data/sauceuser.csv') |
