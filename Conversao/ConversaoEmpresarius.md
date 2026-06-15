Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Conversão Empresarius WME
## Informações
- **Banco**
    - Tipo: SQL Server
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

- **Pessoas**: Clientes, Fornecedores, Transportadoras
- **Produtos**: Unidade, Família, Tributação Federal, NCM, Produto, Produto Códigos, Estoque, Estoque Mín/Máx
- **Financeiro** (Contas): Forma de Pagamento, Plano de Contas, Centro de Custo, Contas a Receber, Contas a Pagar
- **Movimentos**: Vendas (NF), Compras (NF de Entrada)

Caso necessário abrir chamada para implementação de alguma entidade

## Configurações iniciais
### Bancos de dados
Além de [conectar os bancos](Conectarbancos.md) origem e destino, a origem do Empresarius WME é **SQL Server**: selecione o banco de dados de origem na caixa de seleção da aba de conexão, conforme a documentação de [Conectar bancos](Conectarbancos.md).

## Configuração específica

A conversão Empresarius WME não possui parâmetros na aba de configuração específica — segue a [Configuração Geral](ConfiguracaoGeral.md) e as configurações de cada aba.
