programa
{
    // Função principal que inicia o jogo
    funcao inicio()
    {
        inteiro opcao
        // Mensagem de introdução ao jogador
        escreva("Você é um explorador corajoso que se aventura em uma misteriosa Floresta Sussurrante em busca de tesouros e segredos perdidos.\n")
        escreva("Ao adentrar na floresta, você se depara com três caminhos diferentes:\n")
        escreva("1. O Caminho das Sombras\n")
        escreva("2. O Caminho da Luz\n")
        escreva("3. O Caminho das Criaturas\n")
        escreva("Escolha um caminho (1, 2 ou 3): ")
        leia(opcao) // Lê a escolha do usuário

        escolha(opcao) // Inicia a seleção de caminhos
        {
            caso 1:
                caminho_das_sombras() // Chama a função do Caminho das Sombras
                pare
            caso 2:
                caminho_da_luz() // Chama a função do Caminho da Luz
                pare
            caso 3:
                caminho_das_criaturas() // Chama a função do Caminho das Criaturas
                pare
            caso contrario:
                // Mensagem de erro para escolha inválida
                escreva("Escolha inválida. Por favor, selecione um caminho válido.\n")
                inicio() // Permite nova escolha
        }
    }

    // Função para o Caminho das Sombras
    funcao caminho_das_sombras()
    {
        escreva("Você escolheu o Caminho das Sombras.\n")
        escreva("Este caminho é cercado por árvores antigas e sombrias, com raios de lua penetrando entre os galhos.\n")
        escreva("Uma criatura mágica aparece e exige que você resolva um enigma para passar.\n")
        escreva("Enigma: 'Tenho olhos, mas não vejo. Tenho boca, mas não falo. O que sou?'\n")
        
        cadeia resposta
        escreva("Digite sua resposta: ")
        leia(resposta) // Lê a resposta do usuário ao enigma

        // Verifica se a resposta está correta
        se (resposta == "caveira")
        {
            escreva("Resposta correta! Você encontra um baú escondido contendo uma gema preciosa que vale 100 pontos.\n")
        }
        senao
        {
            // Mensagem de erro caso a resposta esteja incorreta
            escreva("Resposta incorreta! A criatura impede sua passagem e você deve retornar.\n")
        }
    }

    // Função para o Caminho da Luz
    funcao caminho_da_luz()
    {
        escreva("Você escolheu o Caminho da Luz.\n")
        escreva("Este caminho é iluminado por raios de sol que filtram entre as copas das árvores.\n")
        escreva("Você encontra uma ponte quebrada sobre um rio turbulento.\n")
        
        cadeia decisao
        escreva("Você tentará atravessar a ponte quebrada ou procurar um desvio? (Digite 'atravessar' ou 'desvio'): ")
        leia(decisao) // Lê a decisão do usuário

        // Verifica se o usuário decide atravessar a ponte
        se (decisao == "atravessar")
        {
            escreva("Você atravessou a ponte com sucesso e encontrou uma fonte mágica que restaura sua saúde e adiciona 50 pontos à sua pontuação.\n")
        }
        senao
        {
            // Mensagem se o usuário optar por procurar um desvio
            escreva("Você decidiu procurar um desvio seguro e continua sua jornada.\n")
        }
    }

    // Função para o Caminho das Criaturas
    funcao caminho_das_criaturas()
    {
        escreva("Você escolheu o Caminho das Criaturas.\n")
        escreva("Este caminho é repleto de sons estranhos e pegadas misteriosas no chão.\n")
        escreva("Você se depara com uma criatura mágica adormecida bloqueando o caminho.\n")
        
        cadeia decisao
        escreva("Você tentará contornar a criatura ou acordá-la? (Digite 'contornar' ou 'acordar'): ")
        leia(decisao) // Lê a decisão do usuário

        // Verifica se o usuário decide contornar a criatura
        se (decisao == "contornar")
        {
            escreva("Você contornou a criatura com sucesso e encontrou uma árvore encantada que lhe concede a habilidade de camuflagem. Você ganha 75 pontos.\n")
        }
        senao
        {
            // Mensagem se o usuário acordar a criatura
            escreva("Você acordou a criatura e ela o expulsou do caminho. Fim da jornada.\n")
        }
    }
}