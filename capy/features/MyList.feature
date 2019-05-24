Feature: MyList

   Feature description Test
   

   Scenario: Creating hundred Lists
        Given I am logged on the Ferguson desktop site
        When I try to create hundred new Lists
        Then I should be able to create my hundred list successfully
