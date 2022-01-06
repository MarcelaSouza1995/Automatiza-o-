# language: pt

Funcionalidade: Realizar busca por produto
  Estou no site e desejo fazer buscar por determinado produto

  Cenário: Fazer uma busca por produto.
    Dado que estou na home
    Quando realizo uma busca por produto
    Então visualizo que a busca do produto foi realizada com sucesso

  Cenário: Erro ao realizar busca por produto.
    Dado que estou na home
    Quando realizo uma busca por um produto que não existe
    Então visualizo que nenhum resultado foi encontrado