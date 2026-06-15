Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Conversão Varsoft
## Informações
- **Banco**
    - Tipo: PostgreSQL 10.0
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
|    ✅    |   ⚠️    |    ✅    |   ❌   |     ❌     |   ❌    |

Entidades cobertas por aba:

- **Pessoas**: Fornecedor
- **Produtos**: Unidade, Família, Grupo, NCM, Tributação Federal, Produto, Produto Códigos, Produto Situação Estoque

Caso necessário abrir chamada para implementação de alguma entidade

## Configurações iniciais
### Bancos de dados
Além de [conectar os bancos](Conectarbancos.md) origem e destino, selecione o banco de origem conforme a documentação de [Conectar bancos](Conectarbancos.md).

## Configuração específica
A conversão Conversão Varsoft não possui parâmetros na aba de configuração específica — segue a [Configuração Geral](ConfiguracaoGeral.md) e as configurações de cada aba.
