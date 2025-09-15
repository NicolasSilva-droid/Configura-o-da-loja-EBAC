            #language: pt

            Funcionalidade: Configuração de produto da EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Selecioonar a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu escolhi a cor, tamanho e quantidade

            Cenário: Seleção de cor obrigátoria
            Quando eu escolher um produto e não selcionar a cor
            Então deve aparecer uma mensagem de alerta "Cor indefinida"

            Cenário: Seleção de tamanho obrigátorio
            Quando eu escolher um produto e não selecionar o tamanho
            Então deve aparecer uma mensagem de alerta "Tamanho indefinido"

            Cenário: Seleção de quantidade obrigátoria
            Quando eu escolher um produto e não selcionar a quantidade
            Então deve aparecer uma mensagem de alerta "Quantidade indefinida"

            Esquema do Cenário: Limitação inteligente
            Quando eu tentar comprar uma <quantidade> maior que 10 itens não deve permitir a compra
            Então deve exibir uma <mensagem> de limite ultrapassado

            Exemplos:
            | quantidade | mensagem              |
            | "5"        | "limite não atingido" |
            | "10"       | "limite atingido"     |
            | "12"       | "limite ultrapassado" |
