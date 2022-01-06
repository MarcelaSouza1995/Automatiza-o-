class LoginPage < SitePrism::Page

  element :input_email, '#email'

  def acessar_login
    visit 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
  end

  def preencher_login 
    input_email.set('admin@gmail.com')
    find('[id="passwd"]').set('admin')
  end

  def click_login
    click_button 'Sign in'
  end

  def preencher_login_dados_incorretos
    input_email.set('admin@gmail.com.br')
    find('[id="passwd"]').set('adminErrado')
  end  

end