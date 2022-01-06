Dado('que estou na tela de login') do
  @page_login = LoginPage.new
  @page_login.acessar_login
end

Quando('realizo login com usuário válido') do
  @page_login.preencher_login
  @page_login.click_login
end

Então('visualizo que estou logado na aplicação') do
  expect(page).to have_link('admin admin')
  expect(page).to have_css('[class="account"]', text: 'admin admin')
  expect(page).to have_content('Welcome to your account. Here you can manage all of your personal information and orders.')
end

Quando('preencho meus dados com senha inválida') do
  @page_login.preencher_login_dados_incorretos
  @page_login.click_login
end

Então('visualizo mensagem de erro ao realizar login') do
  expect(page).to have_content('There is 1 error') 
end