
Given("I am on the Ferguson desktop site") do
    using_wait_time 10 do
      visit "https://ferguson.com"
    end
end
  
When("I type ccc on the search field") do 
    @Logon_page.Logon 
    @header_page.FindSearch
end
  
When("I click on Enter button") do
    @header_page.ClickFind_Button
    @pdp_page.ClickAddToCart_Button

    visit "https://www.ferguson.com/shoppingCart"
end
  
Then("I should see the results I searched") do
  using_wait_time 20 do
     expect(page).to have_content("3/8 in. Copper Coupling 1/2 in OD")
  end
end