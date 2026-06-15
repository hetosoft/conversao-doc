Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Conversão ZPF
## Informações
- **Banco**
    - Tipo: A confirmar com a equipe de conversão
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
- **Produtos**: Unidade, Familia, Grupo, SubGrupo, NCM, Tributação Federal, Produtos, Produto Codigos, Produto Situação Estoque

Caso necessário abrir chamada para implementação de alguma entidade

## Configurações iniciais
### Bancos de dados
Além de [conectar os bancos](Conectarbancos.md) origem e destino, selecione o banco de origem conforme a documentação de [Conectar bancos](Conectarbancos.md).

## Configuração específica
A conversão Conversão ZPF não possui parâmetros na aba de configuração específica — segue a [Configuração Geral](ConfiguracaoGeral.md) e as configurações de cada aba.
