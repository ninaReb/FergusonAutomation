@Demo
Feature: Size Products PDP Functional Validation

   Page Validation for a product with Size options
 

    @SizeFunctional
    @Size
    Scenario: Testing Size Selection
        Given I am logged on Ferguson desktop site
        When I go to the Size Product's Details page  
        When I click on a Size option for the product
        Then I should see the product change to the Size variant selected

    @SizeFunctional
    @Stores
    Scenario: Check Other Stores
        Given I am logged on Ferguson desktop site
        When I go to the Size Product's Details page 
        When I Click the Check other stores link in the size option tab
        Then I should see the store modal
        
    @SizeFunctional
    @availability
    Scenario: Check Availability
        Given I am logged on Ferguson desktop site
        When I go to the Size Product's Details page 
        When I Click the See Whats Available link in the size option tab
        Then I should see the availability modal


    @SizeFunctional
    @Zoom
    Scenario: Testing Image zoom
        Given I am logged on Ferguson desktop site
        When I go to the Size Product's Details page
        When I hover over the main Image
        Then I should see the zoomed image pop up
    
    @SizeFunctional
    @AddToList
    Scenario: Testing Add To my Lists Button
        Given I am logged on Ferguson desktop site
        When I go to the Size Product's Details page  
        When I click on Add To my Lists Button in the size option tab
        Then I should see the Add To My Lists modal


    @SizeFunctional    
    @Print
    Scenario: Testing Print Button
        Given I am logged on Ferguson desktop site
        When I go to the Size Product's Details page  
        When I click the print button
        Then I should see the print preview popup


    @SizeFunctional
    @AddToCartCombo
    Scenario: Testing Add to Cart Button
        Given I am logged on Ferguson desktop site
        When I go to the Size Product's Details page  
        When I click on the Add to Cart Button in the size option tab
        Then I should see a brief with the Checkout Now link
        And I should see the product in the Cart Page 



    
    
    

    

