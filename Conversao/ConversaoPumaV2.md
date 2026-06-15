Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Conversão Puma
## Informações
- **Banco**
    - Tipo: Firebird
    - Versão Especifica: N/A

### Abas implementadas

#### Legenda

| Ícone | Status                   |
| :-----: | ------------------------ |
| ✅    | Implementado: Completo   |
| ⚠️    | Implementado: Incompleto |
| ❌    | Não implementado         |

#### Implementação

| Cadastro | Pessoas | Produtos | Contas | Movimentos | Objetos |
|:--------:|:-------:|:--------:|:------:|:----------:|:-------:|
|   ✅     |  ✅     |  ✅      | ✅     |   ✅       |  ❌     |

Entidades cobertas por aba:

- **Cadastro**: Condição de Pagamento, Forma De Pagamento, Portador, Serie
- **Pessoas**: Pessoas, Funcionario, Condicao Pagamento Pessoas
- **Produtos**: Unidade, Familia, NCM, Produto, Produtos Codigos, Produto Situação Estoque
- **Contas**: Tipo Documento, Contas Pagar, Contas Receber, Caixa Geral
- **Movimentos**: Movimentos Saida, Movimentos Entrada, Movimentos Outros

Caso necessário abrir chamada para implementação de alguma entidade

## Configurações iniciais
### Bancos de dados
Além de [conectar os bancos](Conectarbancos.md) origem e destino, selecione o banco de origem conforme a documentação de [Conectar bancos](Conectarbancos.md).

## Configuração específica

### Condição de Pagamento de Pessoas
Define a condição de pagamento padrão a ser associada às pessoas convertidas.
