        #language: pt

        Funcionalidade: Configurar o produto

        como cliente da EBAC-SHOP
        Quero configurar meu produto de acordo com meu tamanho e gosto
        e escolher a quantidade
        Para depois inserir no carrinho

        Contexto:

        Cenário: Tamanho, cor e quantidade
        Dado que eu acesse a página de autenticação do portal EBAC-SHOP

        Quando eu escolher um "produto"
        E selecionar o "tamanho a cor e a quantidade"
        Então exibir mensagem de "Adicionado ao carrinho"

        Cenário: Não selecionar uma variação

        Quando eu escolher um "produto"
        E não deixar de selecionar "tamanho, cor ou quantidade"
        Então exibir um alerta "selecionar todas as variações"

        Cenário: selecionar apenas 10 produtos

        Quando eu escolher um "produto"
        E selecionar até "1o" itens
        Então exibir uma mensagem "Quantidade válida"

        Cenário: selecionar mais de 10 produtos

        Quando eu escolher um "produto"
        E selecionar mais de "10" itens
        Então exibir um alerta "Quantidade inválida"

        Cenário: botão limpar

        Quando eu estiver no "carrinho"
        E clicar no botão "limpar"
        Então exibir um alerta "carrinho limpo" e voltar ao normal

        Esquema do Cenário: Carrinho de produtos

        Quando eu selecionar o <produto>
        E a <quantidade> com variação
        Então exibir a <mensagem> de sucesso

        Examples:
            | quantidade | variação   | mensagem                        |
            | "10"       | "Verde, M" | "Adicionado ao carrinho"        |
            | "3"        | "rosa"     | "selecionar todas as variações" |
            | "12"       | "roxo, P"  | "Quantidade Inválida"           |



