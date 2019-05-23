#Language: en

Feature: Test

   Feature description Test
   
   @temp
   Scenario: Searching for a product on Ferguson site
        Given I am on the Ferguson desktop site
        When I type ccc on the search field
        And I click on Enter button
        Then I should see the results I searched
