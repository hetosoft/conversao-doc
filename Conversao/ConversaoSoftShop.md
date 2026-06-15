Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Conversão SoftShop
## Informações
- **Banco**
    - Tipo: SQL Server 2014
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
|    ❌    |   ✅    |    ✅    |   ❌   |     ❌     |   ❌    |

Entidades cobertas por aba:

- **Pessoas**: Clientes, Fornecedor, Fabricante
- **Produtos**: Unidade, Familia, Ncm, Produto, Produtos Codigos, Produto Situação Estoque

Caso necessário abrir chamada para implementação de alguma entidade

## Configurações iniciais
### Bancos de dados
Além de [conectar os bancos](Conectarbancos.md) origem e destino, selecione o banco de origem conforme a documentação de [Conectar bancos](Conectarbancos.md).

## Configuração específica
A conversão Conversão SoftShop não possui parâmetros na aba de configuração específica — segue a [Configuração Geral](ConfiguracaoGeral.md) e as configurações de cada aba.
