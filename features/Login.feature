# language: pt

Funcionalidade: Login
  Estou no site e desejo realizar login para ultilizar tudo que a plataforma oferece

  Cenário: Fazer login com sucesso
    Dado que estou na tela de login
    Quando realizo login com usuário válido
    Então visualizo que estou logado na aplicação

  Cenário: Fazer login com falha
    Dado que estou na tela de login
    Quando preencho meus dados com senha inválida
    Então visualizo mensagem de erro ao realizar login