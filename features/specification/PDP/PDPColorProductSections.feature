Feature: Color Products PDP Validation

   Page Validation for a product with Color options


 @Demo
 @ColorSections
    Scenario: Verify Sections of PDP
        Given I am logged on Ferguson desktop site
        When I go to the Color Product's Details page
        Then I should see the Color Product's description section
        And I should see the Color Product's title
        Then I should see the Color Product's code
        Then I should see the Color Product's item number
        Then I should see the Color Product's specifications
        Then I should see the Color Product's Shipping Information
        Then I should see the Color Product's color finish section
        Then I should see the Color Product's Quantity
        Then I should see the Color Product's Green, ADA and Lead Law compliant icons
        Then I should see the Color Product's price
        Then I should see the Color Product's Add to Cart button enabled
        Then I should see the Color Product's Add to My List button enabled
        Then I should see the Color Product's Print button enabled
        Then I should see the Color Product's breadcrumbs
        Then I should see the Color Product's Brand Logo
        Then I should see the Color Product's Store Availability information
        Then I should see the Color Product's Frequently Purchased Together Section
        Then I should see the Color Product's Entire Collection section
        Then I should see Color Product's Bundle Price
        
