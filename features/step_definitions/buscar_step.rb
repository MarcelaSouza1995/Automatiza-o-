Dado('que estou na home') do
  @page_home = HomePage.new
  @page_home.acessar_home
end

Quando('realizo uma busca por produto') do
  @page_home.preencher_search
  @page_home.click_search
  sleep 10
end

Então('visualizo que a busca do produto foi realizada com sucesso') do
  expect(page).to have_content("5 results have been found.")
  expect(page).to have_content("Printed Summer Dress")
end

Quando('realizo uma busca por um produto que não existe') do
  @page_home.preencher_search_invalid
  @page_home.click_search
end

Então('visualizo que nenhum resultado foi encontrado') do
  expect(page).to have_content('0 results have been found.')
  expect(page).to have_content('No results were found for your search')
end