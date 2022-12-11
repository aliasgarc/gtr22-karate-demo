Feature: sample karate test script for API
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://gorest.co.in/public/v2/'
    * def randomNumber = 
    """
      function(max){ 
        return Math.floor(Math.random() * max) 
        }

    """
  * def requestBody = karate.read ('../apiTests/data/request.json')
   @smoke @apiGet
  Scenario: get all users and then get the first user by id
    Given path 'users'
    When method get
    Then status 200
    * def first = response[0]

    Given path 'users', first.id
    When method get
    Then status 200
  
  @smoke @apiCreate
  Scenario: create a user and then get it by id
    * def randNumber = randomNumber(999)
    * def token = karate.read ('../apiTests/data/token.json')
    * print token
    * def sleep = function(millis) { java.lang.Thread.sleep(millis) }

    * def firstName = "First Name_"+randNumber
    * def email = "email_"+randNumber+"@abc.com"
    * def requestBody =
      """
      {
          "name": '#(firstName)',
          "gender": "male",
          "email": '#(email)',
          "status": "active"
      }
     """

    Given url 'https://gorest.co.in/public/v2/'
    And headers token
    And path 'users'
    And request requestBody
    When method post
    Then status 201
    * def resp = response
    Then  path 'users', resp.id
    And headers token
    And method get
    Then status 200
    # And match response contains user
  