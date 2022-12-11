Feature: Basic UI Tests

Background:
  * configure driver = { type: 'chrome', showDriverLog: true }
@basicUITest
Scenario:  UI tests for Saucedemo site

  Given driver 'https://www.saucedemo.com/'
  And driver.maximize()
  And input('#user-name', 'standard_user')
  And input('#password', 'secret_sauce')
  When click("input[name=login-button]")
  Then match  driver.url == 'https://www.saucedemo.com/inventory.html'
  * highlight('#react-burger-menu-btn')
  Then click('#react-burger-menu-btn')
  Then click('#logout_sidebar_link')
  Then match  driver.url == 'https://www.saucedemo.com/'

