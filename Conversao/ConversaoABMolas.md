Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Conversão ABMolas
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
|   ❌     |  ✅     |  ✅      | ❌     |   ❌       |  ❌     |

Entidades cobertas por aba:

- **Pessoas**: Região, Clientes, Ramo de Atividade, Fornecedor, Funcionario, Transport., Fabricante, Vincular Vendedor a Pessoa
- **Produtos**: Unidades, Família, Grupo, Produtos, Estoque Localização, Produto Localização, NCM, Produto Códigos, Produtos Similares, Produto Situação Estoque, Imagens

Caso necessário abrir chamada para implementação de alguma entidade

## Configurações iniciais
### Bancos de dados
Além de [conectar os bancos](Conectarbancos.md) origem e destino, selecione o banco de origem conforme a documentação de [Conectar bancos](Conectarbancos.md).

## Configuração específica
A conversão Conversão ABMolas não possui parâmetros na aba de configuração específica — segue a [Configuração Geral](ConfiguracaoGeral.md) e as configurações de cada aba.
