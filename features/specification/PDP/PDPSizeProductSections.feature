@Demo
Feature: Size Products PDP Validation

   Page Validation for a product with Size options


 
    @SizeSections
    @SizePDP
    Scenario: Verify Sections of PDP
        Given I am logged on Ferguson desktop site
        When I go to the Size Product's Details page
        Then I should see the Size Product's description section
        And I should see the Size Product's title
        Then I should see the Size Product's code
        Then I should see the Size Product's specifications
        Then I should see the Size Product's size selection list
        Then I should see the Size Product's price options
        Then I should see the Size Product's Print button enabled
        Then I should see the Size Product's breadcrumbs
        Then I should see the Size Product's Brand Logo


    @SizeSections
    @SizeOption
    Scenario: Buying Options
        Given I am logged on Ferguson desktop site
        When I go to the Size Product's Details page
        And I click one of the buying options
        Then I should see that option's info expand
        Then I should see the Size Option's code
        Then I should see the Size Product's Shipping Information
        Then I should see the Size Product's Quantity
        Then I should see the Size Product's Add to Cart button enabled
        Then I should see the Size Product's Add to My List button enabled
        Then I should see the Size Product's Store Availability information
        
