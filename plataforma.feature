        #language: pt

        Funcionalidade: Plataforma de login

        Como cliente da EBAC-SHOP
        Quero fazer o login (autenticação) na plataforma
        Para visualizar meus pedidos

        Contexto:

        Cenário: Dados válidos, para a tela de checkout
        Dado que eu acesse  a Plataforma de login EBAC

        Quando eu inserir meu email "usuário123"
        E a senha "123"
        Então ser redirecionado e exibir a mensagem "Acompanhe seus pedidos"

        Cenário: Dados inválidos
        Dado que eu acesse  a Plataforma de login EBAC

        Quando eu inserir meu email "usuário@@123"
        E a senha "123"
        Então exibir um alerta "Usuário ou senha inválidos"

        Cenário: Dados válidos, para a tela de checkout
        Dado que eu acesse  a Plataforma de login EBAC

        Quando eu inserir meu email "usuário123"
        E a senha "123"
        Então ser redirecionado e exibir a mensagem "Acompanhe seus pedidos"

        Esquema do Cenário: Autenticação

        Examples:
            | Nome           | senha | mensagem                     |
            | "usuário123"   | "123" | "Acompanhe seu pedido"       |
            | "usuário@@123" | "123" | "usuário ou senha inválidos" |


