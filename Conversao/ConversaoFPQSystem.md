Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Nome
## Informações
- **Banco**:
	- Tipo: DBase 
	- Versão específica: N/A
	- Obs: É necessário utilizar o [Backup Dbase](BackUpDbase.md)

### Abas implementadas

#### Legenda

| Ícone | Status                   |     |
| :---: | ------------------------ | --- |
|   ✅   | Implementado: Completo   |     |
|  ⚠️   | Implementado: Incompleto |     |
|   ❌   | Não implementado         |     |
  
#### Implementação

| Cadastro | Pessoas | Produtos | Contas | Movimentos | Objetos |
|:--------:|:-------:|:--------:|:------:|:----------:|:-------:|
|    ❌     |    ✅    |    ✅     |   ❌    |     ❌      |    ❌    |

Caso necessário abrir chamada para implementação de alguma entidade

## Configuração específica

O Sistema FPQ utiliza banco de dados [dBASE](https://www.dbase.com/), um SGBD proprietário e pouco utilizado. **Não é possível conectar-se ao banco dBASE diretamente**. A solução encontrada foi utilizar uma licença do Software [DBF Viewer 2000](https://www.dbf2002.com/pt/) para realizar a conversão dos arquivos .DBF para arquivos .SQL e a partir desses novos arquivos .SQL importar os dados para o SQL Server. O processo de conversão DBF->SQL->SQL Server foi automatizado e pode ser encontrado na aba de [Utilitário Backup](UtilitariosBackup.md) na sessão [Configurações DBase](BackUpDbase.md)