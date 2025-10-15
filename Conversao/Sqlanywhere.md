# SQL ANYWHERE

## Configuração de Conexão

Alguns sistemas utilizam o banco da SAP SQL Anywhere, onde não é possível conectar diretamente ao sol.net. Para fazer isso, terá que configurar pelo ODBC.

![Configuração ODBC](https://github.com/user-attachments/assets/ac42f3af-a023-4e66-b398-61e149306a43)

## Problema com Múltiplas Abas

O SQL Anywhere não permite abrir múltiplas abas, o que dificulta o mapeamento da conversão. Para resolver isso, pode-se utilizar o Sybase jConnect no DBeaver.

## Configuração Alternativa com DBeaver

Para usar o DBeaver, será necessário:

1. Estar conectado no servidor do SQL Anywhere
2. Executar um comando no CMD criando um TCP/IP na porta que está configurada no SQL Anywhere

Com isso, facilita o mapeamento com o DBeaver.

## Procedimento Pós-Mapeamento

Após finalizar o mapeamento:
- Encerre o serviço do TCP/IP **OU**
- Reinicie o PC para conseguir fazer a conversão novamente utilizando o ODBC

## Observação Importante

⚠️ **Nota:** O DBeaver só fornece suporte a ODBC na versão Pro (paga).
