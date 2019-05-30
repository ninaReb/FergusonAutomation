class LoginPage
  include Capybara::DSL

  def logon(email, password)
    fill_in 'hero-login-email', with: email
    fill_in 'hero-login-pwd', with: password
    click_button 'hero-login-submit'
  end

  def goto_MyListPage
    visit 'https://www.ferguson.com/myAccount/myList'
  end

  def logout
    logoff = find('#tour-step1')
    logoff.hover
    find(:xpath, '//*[@id="wrapper"]/header/div[4]/div[3]/ul/li[1]/div/nav[1]/ul/li[6]/p/a').click
  end
end
