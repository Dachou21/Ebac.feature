#language: pt 
Funcionalidade : Cadastro de usuário 

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