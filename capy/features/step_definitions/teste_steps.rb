
Given("I am on the Ferguson desktop site") do
  using_wait_time 10 do
    visit "https://ferguson.com"
  end
end
  
When("I type ccc on the search field") do 
  using_wait_time 10 do
    fill_in 'hero-login-email', :with => "test_123@mailinator.com"
    fill_in 'hero-login-pwd', :with => "Admin123"
  end
end
  
When("I click on Enter button") do
  using_wait_time 10 do
    click_button 'hero-login-submit' 
  end
end
  
Then("I should see the results I searched") do
  using_wait_time 10 do
    expect(find(page)).to have_button('tour-step1')
     # expect(find('tour-step1').visible?).to be true
  end
end