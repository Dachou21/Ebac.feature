#language:pt
Funcionalidade: Compra de produtos
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário:Compra de Produtos
Quando selecionar a cor, tamanho e quantidade deve ser obrigatórios
E deve permitir 10 produtos por venda
Então quando clicar no botão "limpar" deve voltar ao estado original

Contexto:
Dado que eu acesso a tela do portal da EBAC-SHOP

Cenário:Autenticação Válida
Quando eu digitar "Joséernesto@ebac.com.br"
E a senha "José123"
Então redirecionar para a tela de Checkout

Cenário:Autenticação Inválida
Quando eu digitar "Joséernesto@ebac.com.br"
E a senha "Cabeçadura123"
Então deve exibir uma mensagem de alerta "Senha ou usuário incorretos"

Contexto: 
Dado que eu possa criar minha conta

Cenário: Criação de conta e login
Quando o símbolo de "*" for encontrado significa preencher dados obrigatórios
E caso campo do "e-mail" for inválido
E campos de cadastro vazios
Então exibir uma mensagem de alerta "Preencha corretamente o campo indicado"

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



