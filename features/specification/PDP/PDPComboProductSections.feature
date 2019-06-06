Feature: Combo Products PDP Validation

   Page Validation for a product with Combo options


 @Demo
 @ComboSections
    Scenario: Verify Sections of PDP
        Given I am logged on Ferguson desktop site
        When I go to the Combo Product's Details page
        Then I should see the Combo Product's description section
        And I should see the  Combo Product's title
        Then I should see the Combo Product's code
        Then I should see the Combo Product's item number
        Then I should see the Combo Product's specifications
        Then I should see the Combo Product's Shipping Information
        Then I should see the Combo Product's Quantity
        Then I should see the Combo Product's color finish section
        Then I should see the Combo Product's Green icon
        Then I should see the Combo Product's price
        Then I should see the Combo Product's Add to Cart button enabled
        Then I should see the Combo Product's Add to My List button enabled
        Then I should see the Combo Product's Print button enabled
        Then I should see the Combo Product's breadcrumbs
        Then I should see the Combo Product's Brand Logo
        Then I should see the Combo Product's Store Availability information
        Then I should see the Combo Product's Frequently Purchased Together Section
        Then I should see the Combo Product's Recommended section
        Then I should see the Combo Product's Entire Collection section
        Then I should see Combo Product's Bundle Price
        
