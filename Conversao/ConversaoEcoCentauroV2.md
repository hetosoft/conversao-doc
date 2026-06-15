Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Conversão Eco Centauro
## Informações
- **Banco**
    - Tipo: Firebird 2.5
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
|    ✅    |   ✅    |    ✅    |   ✅   |     ✅     |   ❌    |

Entidades cobertas por aba:

- **Pessoas**: Cliente, Fornecedor
- **Produtos**: Unidade, Familia, Grupo, NCM, SubGrupo, Produtos, Produto Codigos, Produto Situacao Estoque
- **Cadastro**: Portador, Cond. de Pagamento, Forma de Pagamento
- **Contas**: Tipo Documento, Contas Pagar, Contas Receber, Planos de Conta, Controle Financeiro
- **Movimentos**: Movimento Entrada, Outras Entradas, Outras Saidas, Mov. Saida Fiscal, Mov. Dev. Fiscal

Caso necessário abrir chamada para implementação de alguma entidade

## Configurações iniciais
### Bancos de dados
Além de [conectar os bancos](Conectarbancos.md) origem e destino, selecione o banco de origem conforme a documentação de [Conectar bancos](Conectarbancos.md).

## Configuração específica

### Lista Tabelas de Preço
Lista das tabelas de preço da origem que devem ser convertidas.
