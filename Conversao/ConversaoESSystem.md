Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Conversão ES-System
## Informações
- **Banco**:
	- Tipo: 
	- Versão específica:

### Abas implementadas

#### Legenda

| Ícone | Status                   |
|:-----:| ------------------------ |
|  ✅   | Implementado: Completo   |
|  ⚠️   | Implementado: Incompleto | 
|  ❌   | Não implementado         |
  
#### Implementação

| Cadastro | Pessoas | Produtos | Contas | Movimentos | Objetos |
|:--------:|:-------:|:--------:|:------:|:----------:|:-------:|
|    ❌    |   ✅    |    ✅    |   ❌   |     ❌     |   ❌    |

Caso necessário abrir chamada para implementação de alguma entidade

## Configuração específica
O Sistema ES-System utiliza banco de dados [dBASE](https://www.dbase.com/), um SGBD proprietário e pouco utilizado. **Não é possível conectar-se ao banco dBASE diretamente**. A solução encontrada foi utilizar uma licença do Software [DBF Viewer 2000](https://www.dbf2002.com/pt/) para realizar a conversão dos arquivos .DBF para arquivos .SQL e a partir desses novos arquivos .SQL importar os dados para o SQL Server. O processo de conversão DBF->SQL->SQL Server foi automatizado e pode ser encontrado na aba de [Utilitário Backup](UtilitariosBackup.md) na sessão [Configurações DBase](BackUpDabase.md)

>[!TIP] 
>Caso a conversão não inclua contas e movimentos é indicado descartar os arquivos PVEND001.DBF, CT_RC001.DBF, DDPV001.DBF, DDCR001.DBF, SATPRO.DBF, CREVENTO.DBF, SAT.DBF e SATMSG.DBF antes de prosseguir. Essas tabelas são bastante pesadas e podem diminuir significativamente a velocidade de importação
