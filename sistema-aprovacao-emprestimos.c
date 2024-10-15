#include <stdio.h>
#include <stdlib.h>

int main() {
    // Declaração de variáveis
    float rendaMensal, valorEmprestimo, percRenda;
    char historicoCredito, estabilidadeEmprego;
    int valorEntrada;

    // Limpar o console
    system("clear");

    // Destaca o nome do sistema de forma elegante :)
    printf(" ** SISTEMA DE EMPRÉSTIMO FINANCEIRO **\n");

    // Coleta da renda mensal do usuário
    printf("Digite sua renda mensal: R$ ");
    scanf("%f", &rendaMensal);

    // Coleta do valor do empréstimo desejado
    printf("Digite o valor do emprestimo: R$ ");
    scanf("%f", &valorEmprestimo);

    // Coleta do histórico de crédito
    printf("Digite seu historico de credito (B = Bom, R = Ruim): ");
    scanf(" %c", &historicoCredito); // O espaço antes do %c é importante para evitar problemas com leitura de caracteres

    // Coleta da estabilidade no emprego
    printf("Digite sua estabilidade no emprego (E = Estavel, I = Instavel): ");
    scanf(" %c", &estabilidadeEmprego);

    // Coleta do valor da entrada
    printf("Digite o valor da entrada: R$ ");
    scanf("%d", &valorEntrada);

    // Cálculo da porcentagem do valor do empréstimo em relação à renda mensal
    percRenda = valorEmprestimo / rendaMensal;
    
    // Verificação se o valor do empréstimo excede 30% da renda mensal
    if (percRenda > 0.3) {
        // Caso o empréstimo exceda 30% da renda, ele é rejeitado
        printf("Emprestimo rejeitado: O valor do emprestimo excede 30%% da sua renda.\n");
    }
    // Verificação do histórico de crédito
    else if (historicoCredito == 'R' || historicoCredito == 'r') {
        // Se o histórico de crédito for ruim, o empréstimo é rejeitado
        printf("Emprestimo rejeitado: Historico de credito ruim.\n");
    }
    // Verificação da estabilidade no emprego
    else if (estabilidadeEmprego == 'I' || estabilidadeEmprego == 'i') {
        // Se a estabilidade no emprego for instável, o empréstimo é rejeitado
        printf("Emprestimo rejeitado: Estabilidade no emprego instavel.\n");
    }
    // Se todas as condições forem satisfeitas, o empréstimo é aprovado
    else {
        printf("Parabens! Seu emprestimo foi aprovado.\n");
    }

    return 0;
}