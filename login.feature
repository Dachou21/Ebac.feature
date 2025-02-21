#language: pt
Funcionalidade: configuração de login 

Contexto: Dado que eu acesse a aba de login do portal EBAC-SHOP

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação)na plataforma
Para visualizar meus pedidos


Cenário: Login de usuário
Quando o usuario inserir seus dados válidos
Deve ser redirecionado para tela de Checkout
Caso seja uma conta inexistente ou senha e usuario inválidos
Então exibir uma mensagem de alerta "Senha ou usuario inválidos"


Esquema de usuario: Autenticar multiplos usuario
Quando eu digitar o <usuario>
E a <senha>
Então deve exibir a <mensagem> de sucesso


Exemplos:
|usuario             |senha |mensagem
|Joséernesto@.com.br |123   |"Ola José"
|Joséernesto@com.br  |testes|"Senha ou usuario inválidos"
