
config = {
        credits = true -- Adicionar criado por na descrição do item?
}

forges = {     
        [2400] = { -- o item que será feito
                recipe = {{2376, 1}}, -- a receita do item
                chance = 1000 -- chance do item dar certo (100% = 1000, 1% = 10, 0.5% = 5 e etc)
        }, -- note essa vírgula entre as diferentes receitas
        [2471] = { -- id do golden helmet
                recipe = {{2160, 100}, {2520, 1}} -- a receita do exemplo
                chance = 10 -- 1% de chance hehe
        }
}