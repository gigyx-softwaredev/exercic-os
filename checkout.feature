        #language: pt

        Funcionalidade: Tela de cadastro Checkout

        Como cliente da EBAC-SHOP
        Quero fazer concluir meu cadastro
        Para finalizar minha compra

        Contexto:

        Cenário: Dados cadastrados com * obrigatório
        Dado que eu acesse a página de cadastro do portal EBAC-SHOP

        Quando eu preencher os campos com "*"
        E clicar em "finalizar compra"
        Então exibir mensagem de "Cadastro concluido, finalize sua compra"

        Cenário: Dados cadastrados com * obrigatório

        Quando eu não preencher os campos com "*"
        E clicar em "finalizar compra"
        Então exibir um alerta de  "Inválido, preencher *"

        Cenário: Email com formato inválido

        Quando inserir o email "usuário@123.email"
        E clicar em "finalizar compra"
        Então exibir mensagem de "Cadastro concluido, finalize sua compra"

        Cenário: Email com formato inválido

        Quando inserir o email "usuário!!123.email"
        E clicar em "finalizar compra"
        Então exibir mensagem de alerta "Formato de email inválido"

        Esquema do Cenário: Autenticação
        
        Quando eu preencher o <CamposCom*>
        E clicar em <finalizar compra> 
        Então exibir a <mensagem> de sucesso

        Examples:
            | <CamposCom*>  | <finalizar compra>               | <mensagem  >                  |
            | "preenchidos" | "usuário@123.email"  | "Cadastro concluido, finalize sua compra" |
            | "em branco"   | "usuário@123.email"  | "Inválido, preencher *"                   |
            | "preenchidos" | "usuário!!123.email" | "Formato de email inválido"               |




