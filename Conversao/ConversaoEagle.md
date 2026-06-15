Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Conversão Eagle
## Informações
- **Banco**
    - Tipo: SQL Server 2012
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
|   ❌     |  ✅     |  ✅      | ❌     |   ❌       |  ❌     |

Entidades cobertas por aba:

- **Pessoas**: Clientes, Fornecedor
- **Produtos**: Unidade, Tributação Federal, Produto, Produtos Codigos, Produto Situação Estoque

Caso necessário abrir chamada para implementação de alguma entidade

## Configurações iniciais
### Bancos de dados
Além de [conectar os bancos](Conectarbancos.md) origem e destino, selecione o banco de origem conforme a documentação de [Conectar bancos](Conectarbancos.md).

## Configuração específica
A conversão Conversão Eagle não possui parâmetros na aba de configuração específica — segue a [Configuração Geral](ConfiguracaoGeral.md) e as configurações de cada aba.
