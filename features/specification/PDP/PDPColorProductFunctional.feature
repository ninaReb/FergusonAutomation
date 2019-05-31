@Demo
Feature: Color Products PDP Functional Validation

   Page Validation for a product with Color options
 

    @ColorFunctional
    @Color
    Scenario: Testing Color Selection
        Given I am logged on Ferguson desktop site
        When I go to the Color Product's Details page  
        When I click on a color option for the product
        Then I should see the product change to the color variant selected

    @ColorFunctional
    @Stores
    Scenario: Check Other Stores
        Given I am logged on Ferguson desktop site
        When I go to the Color Product's Details page 
        When I Click the Check other stores link
        Then I should see the store modal
        
    @ColorFunctional
    @availability
    Scenario: Check Availability
        Given I am logged on Ferguson desktop site
        When I go to the Color Product's Details page 
        When I Click the See Whats Available link
        Then I should see the availability modal

    @ColorFunctional
    @Specs
    Scenario: Testing Specs Arrow
        Given I am logged on Ferguson desktop site
        When I go to the Color Product's Details page 
        When I Click the blue arrow in the Specifications section
        Then I should see the Color Product's Specifications section expanded

    @ColorFunctional
    @Zoom
    Scenario: Testing Image zoom
        Given I am logged on Ferguson desktop site
        When I go to the Color Product's Details page
        When I hover over the main Image
        Then I should see the zoomed image pop up
    
    @ColorFunctional
    @AddToList
    Scenario: Testing Add To my Lists Button
        Given I am logged on Ferguson desktop site
        When I go to the Color Product's Details page  
        When I click on Add To my Lists Button
        Then I should see the Add To My Lists modal

    # @ColorFunctional    
    # @Size
    # Scenario: Testing Size Selection
    #     Given I am logged on Ferguson desktop site
    #     When I go to the Color Product's Details page  
    #     When I pick a size option for the product
    #     Then I should see the product change to the size variant selected

    @ColorFunctional    
    @Print
    Scenario: Testing Print Button
        Given I am logged on Ferguson desktop site
        When I go to the Color Product's Details page  
        When I click the print button
        Then I should see the print preview popup


    @ColorFunctional
    @AddToCartCombo
    Scenario: Testing Add to Cart Button
        Given I am logged on Ferguson desktop site
        When I go to the Color Product's Details page  
        When I click on the Add to Cart Button
        Then I should see a brief with the Checkout Now link
        And I should see the product in the Cart Page 

    @ColorFunctional
    @ViewAll
    Scenario: Testing View All in Entire Collections
        Given I am logged on Ferguson desktop site
        When I go to the Color Product's Details page 
        When I click on the View All link 
        Then I should see the collection page 


    @ColorFunctional
    @Box
    Scenario: Testing FPT first Checkbox 
        Given I am logged on Ferguson desktop site
        When I go to the Color Product's Details page 
        When I click on the first Checkbox on the Frequently Purchased Together section
        And I click the checkbox again
        Then I should see the all checkboxes active
      
    @ColorFunctional
    @FPTCart
    Scenario: Testing Add to Cart Button in FPT section
        Given I am logged on Ferguson desktop site
        When I go to the Color Product's Details page  
        When I click on the Add to Cart button in the Frequently Purchased Together section
        Then I should see the cart page
        And I should see all the products from the FTP version added to cart

    @ColorFunctional
    @Arrow
    Scenario: Testing Entire Collection Right Arrow
        Given I am logged on Ferguson desktop site
        When I go to the Color Product's Details page  
        When I click on the Right-side arrow in the Entire collection section
        Then I should see the products shift

    @ColorFunctional
    @Arrow
    Scenario: Testing Entire Collection Left Arrow
        Given I am logged on Ferguson desktop site
        When I go to the Color Product's Details page  
        When I click on the Left-side arrow in the Entire collection section
        Then I should see the products shift

