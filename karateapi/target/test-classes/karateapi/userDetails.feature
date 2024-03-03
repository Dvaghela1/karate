Feature: fetching User Details
Scenario: testing the get one User Details

Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200 
* match response.data.id == 2
* match response.data.email == 'janet.weaver@reqres.in'
#We are printing the Response of the API using the print keyword#
Then print response

Scenario: testing the get ALL User Details
Given url 'https://reqres.in/api/users'
When method GET
Then status 200 
* match response.per_page == 6
* match response.data[0].id == 1
* match response.data[0].email == "george.bluth@reqres.in"
* match response.data[*].id contains [1,2,3,4,5,6]

#Reading the file ExpectedOutput.json and storing same response in variable expectedResult
Given expectedResult=read('./users.json')
#Asserting the Actual Response with the Expected Response
And match response == expectedResult