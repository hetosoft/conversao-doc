Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Conversão SDX
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
|   ✅     |  ✅     |  ✅      | ✅     |   ✅       |  ❌     |

Entidades cobertas por aba:

- **Cadastro**: Usuários, Caixa Geral, Forma de Pagamento, Condição de Pagamento, Tipo de Documento
- **Pessoas**: Ramo Atividade, Status Pessoa, Pessoas, Fabricante, Veiculos
- **Produtos**: Unidade, Familia, NCM, Produtos, Produto Codigos, Estoque Localização, Produto Localização, Produto Situação Estoque
- **Movimentos**: Saída Pedido, Saída Fiscal, Entrada Fiscal, Entrada Pedido
- **Contas**: Contas Pagar, Contas Receber

Caso necessário abrir chamada para implementação de alguma entidade

## Configurações iniciais
### Bancos de dados
Além de [conectar os bancos](Conectarbancos.md) origem e destino, selecione o banco de origem conforme a documentação de [Conectar bancos](Conectarbancos.md).

## Configuração específica
A conversão Conversão SDX não possui parâmetros na aba de configuração específica — segue a [Configuração Geral](ConfiguracaoGeral.md) e as configurações de cada aba.
