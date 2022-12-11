Feature: sample karate test script for API with call

  Background:
    * url 'https://gorest.co.in/public/v2/'
    * def randomNumber = 
    """
      function(max){ 
        return Math.floor(Math.random() * max) 
        }

    """
  * def requestBody = karate.read ('../apiTests/data/request.json')
   @smoke @apiGetCreate
  Scenario: create a user and then get it by id
    * def randNumber = randomNumber(999)
    * def getResponse = call read('apitest1.feature@apiGet') 
    * print getResponse.response
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
  