class HeaderPage
  include Capybara::DSL

  def find_search(content)
    find(:xpath, '//*[@id="react-type-ahead-normal"]/fieldset/input[1]').set(content)
  end

  def click_find_btn
    find(:xpath, '//*[@id="react-type-ahead-normal"]/fieldset/input[2]').click
  end
end
