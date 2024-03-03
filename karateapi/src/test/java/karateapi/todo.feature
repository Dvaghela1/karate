Feature: Get todo list
 
   Scenario: testing get todo list
      Given url 'https://jsonplaceholder.typicode.com/todos'
      And request '{"name": "morpheus","job": "leader"}'
     When method GET
     Then status 200
    * match $[0].title contains 'delectus aut autem'