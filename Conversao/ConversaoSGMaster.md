Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Conversão SG Master
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
|   ❌     |  ✅     |  ✅      | ❌     |   ❌       |  ❌     |

Entidades cobertas por aba:

- **Pessoas**: Clientes, Fornecedores
- **Produtos**: Familia, Unidade, Grupo, Tributação Federal, NCM, Produtos, Produtos Codigos, Produto Situação Estoque

Caso necessário abrir chamada para implementação de alguma entidade

## Configurações iniciais
### Bancos de dados
Além de [conectar os bancos](Conectarbancos.md) origem e destino, selecione o banco de origem conforme a documentação de [Conectar bancos](Conectarbancos.md).

## Configuração específica
A conversão Conversão SG Master não possui parâmetros na aba de configuração específica — segue a [Configuração Geral](ConfiguracaoGeral.md) e as configurações de cada aba.
