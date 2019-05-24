class Login
    include Capybara::DSL
    
    def Logon
        using_wait_time 10 do
            fill_in 'hero-login-email', :with => "test_1234@mailinator.com"
            fill_in 'hero-login-pwd', :with => "Admin123"
            click_button 'hero-login-submit' 
         end
    end

    def Goto_MyList
      visit "https://www.ferguson.com/myAccount/myList"
    end

    def Logout
      using_wait_time 10 do
        logout = find('#tour-step1')
        logout.hover
        find(:xpath,'//*[@id="wrapper"]/header/div[4]/div[3]/ul/li[1]/div/nav[1]/ul/li[6]/p/a').click
      end
    end

end

