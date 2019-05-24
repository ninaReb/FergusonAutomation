Given("I am logged on the Ferguson desktop site") do
    @Logon_page.Logon  
    visit "https://www.ferguson.com/myAccount/dashboard"
    visit "https://www.ferguson.com/myAccount/myList"
end

When("I try to create hundred new Lists") do 
  using_wait_time 15 do
      3.times do |i|
         @MyList_page.Click_CreateNewList
         @MyList_page.Fill_ListName(i.to_s)
         @MyList_page.Click_Save
       end
  end
end

Then("I should be able to create my hundred list successfully") do 
  using_wait_time 10 do
     #have_coexpect(page).to have_css('.js-group-or-list', :count => 2) #verificar
  #   expect(page).to have_selector('.js-group-or-list', :count => 2)
     expect(page).to content("test 1")
  end
  sleep 15
  @Logon_page.Logout
end