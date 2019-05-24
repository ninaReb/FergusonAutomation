Given("I am on logged the ferguson login page") do
    @Logon_page.Logon  
  end
  
  When("I click to logout") do
    @Logon_page.Logout 
  end
  
  Then("I should be able logout successfully") do
    using_wait_time 5 do
        expect(page).to have_css('header-login-hover', :visible => true) #verificar
    end
  end