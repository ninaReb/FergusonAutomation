Before do
    # @cart_page = CartPage.new   --- @variavel de instancia, fica visivel para todos
    using_wait_time 10 do
        visit "https://ferguson.com"
      end

    @login_page = LoginPage.new
    @header_page = HeaderPage.new
    @pdp_page = PdpPage.new
    @mylist_page = MyListPage.new 
    @pdpana_page = PdpAnaPage.new
    @PdpNina = PdpNina.new

end
