class HomePage < SitePrism::Page
  element :input_search, '#search_query_top'

  def acessar_home
    visit 'http://automationpractice.com/index.php'
  end

  def preencher_search 
    input_search.set('Printed')
  end

  def click_search
   find_button(class:'btn btn-default button-search').click
  end
 
  def preencher_search_invalid
    find('[id="search_query_top"]').set('Calça')
  end
  
end
