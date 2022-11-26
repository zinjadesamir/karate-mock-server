@ignore
Feature: test karate

  Scenario: pathMatches('/startup') && methodIs('get')
    * def responseStatus = 200
    * def response =
    """
    {
      "success" : true
    }
    """

  Scenario: pathMatches('/returnMulti') && methodIs('post')
    * def responseStatus = 200
    * json obj = request
    * def multi = read('even.js')
    * def output = call multi obj
    * def responseStatus = 200
    * def response = output
