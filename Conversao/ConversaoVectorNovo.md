Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Conversão Vector Novo
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
|    ✅    |   ✅    |    ✅    |   ✅   |     ✅     |   ❌    |

Entidades cobertas por aba:

- **Cadastro**: Portador, Usuario, Centro de Custo, Plano de Contas
- **Pessoas**: Cliente, Fornecedor, Fabricante, Funcionario
- **Produtos**: Unidade, Familia, Grupo, NCM, Produto, Produtos Codigos
- **Contas**: Contas a Pagar, Contas a Receber
- **Movimentação**: Movimentos Fiscais, Movimentos

Caso necessário abrir chamada para implementação de alguma entidade

## Configurações iniciais
### Bancos de dados
Além de [conectar os bancos](Conectarbancos.md) origem e destino, selecione o banco de origem conforme a documentação de [Conectar bancos](Conectarbancos.md).

## Configuração específica
A conversão Conversão Vector Novo não possui parâmetros na aba de configuração específica — segue a [Configuração Geral](ConfiguracaoGeral.md) e as configurações de cada aba.
