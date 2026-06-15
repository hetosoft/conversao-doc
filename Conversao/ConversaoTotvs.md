Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Conversão Totvs
## Informações
- **Banco**
    - Tipo: SOL.NET (origem) — o driver do banco de origem é selecionável no campo `Driver Principal` (Firebird, SQL Server, Oracle, SQLite, MySQL, PostgreSQL)
    - Versão Especifica: N/A

> Esta conversão é uma **exportação do SOL.NET para o Totvs**: lê o banco do próprio SOL.NET e gera os arquivos no `Caminho da Exportação`, não importa dados de um sistema de terceiros para o SOL.NET.

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
|    ❌    |   ✅    |    ✅    |   ✅   |     ⚠️     |   ❌    |

Entidades cobertas por aba:

- **Conversões**: Preco, Produtos, Media Diaria de Vendas, Fornecedores, Estoque e Custos, Contas a Pagar e Receber

Caso necessário abrir chamada para implementação de alguma entidade

## Configurações iniciais
### Bancos de dados
Além de [conectar os bancos](Conectarbancos.md) origem e destino, selecione o banco de origem conforme a documentação de [Conectar bancos](Conectarbancos.md).

## Configuração específica

### Driver Principal
Driver do banco de origem (SOL.NET): Firebird, SQL Server, Oracle, SQLite, MySQL ou PostgreSQL.

### Caminho do Banco Principal
Caminho do arquivo/instância do banco principal de origem.

### Nome do Banco Principal
Nome do banco principal de origem.

### Usuário Principal
Usuário de acesso ao banco principal de origem.

### Senha Principal
Senha de acesso ao banco principal de origem.

### Id Empresa
Id da empresa de origem cujos dados serão exportados.

### Caminho da Exportação
Pasta onde os arquivos gerados para o Totvs serão salvos.

### Data Inicio / Data fim
Intervalo de datas considerado na exportação.

### Situação de Estoque
Situação de estoque a ser exportada.

### Locais de Estoque
Locais de estoque a serem considerados na exportação.
