# Cliente Oracle para o conversor

O conversor Win64 usa o Oracle Instant Client Basic x64 pelo FireDAC para ler
um banco Oracle. Instale o cliente na máquina que executa `SolNET_Conversao.exe`,
mesmo quando o servidor Oracle está no Docker ou em outra máquina.

As DLLs são obtidas diretamente da Oracle. Não é necessário Git LFS, instalar
ODBC ou copiar arquivos para System32.

## Instalar pelo script

1. Instale o runtime Microsoft Visual C++ x64 indicado na
   [página oficial da Oracle](https://www.oracle.com/database/technologies/instant-client/winx64-64-downloads.html).
2. Baixe o [script InstalarOracle.ps1](utils/InstalarOracle.ps1) e salve-o no computador.
3. Feche o conversor e execute no PowerShell, ajustando a pasta:

```powershell
& '.\InstalarOracle.ps1' -PastaConversor 'E:\Sol.NET_Conversao\MinhaInstalacao'
```

O script baixa o pacote Basic completo, versão **23.26.4.0.0**, verifica o
SHA-256 publicado pela Oracle, extrai o pacote temporariamente e copia as DLLs
e os avisos do fornecedor para junto do executável. Ele recusa executáveis
Win32 e conversores abertos nessa pasta. Abra o conversor novamente ao terminar.

Para uma máquina sem acesso à internet, baixe o
[ZIP oficial Basic x64](https://download.oracle.com/otn_software/nt/instantclient/2326400/instantclient-basic-windows.x64-23.26.4.0.0.zip)
em outra máquina, transfira-o e informe o arquivo:

```powershell
& '.\InstalarOracle.ps1' -PastaConversor 'E:\Sol.NET_Conversao\MinhaInstalacao' -ArquivoZip 'C:\Downloads\instantclient-basic-windows.x64-23.26.4.0.0.zip'
```

SHA-256 esperado:
`09e9b81cd492f5ce6f671317c23a0e1f5dee5e786258149d216321c3dad3023f`.
Se a validação falhar, o script termina antes de copiar arquivos ao destino.

## Instalação manual

Extraia o ZIP oficial e copie todas as DLLs de `instantclient_23_26`,
`BASIC_LICENSE` e `BASIC_README` para a pasta do conversor Win64 fechado.
Preserve os avisos ao distribuir as bibliotecas. Não misture versões nem
arquiteturas; um conversor Win32 exige um cliente Oracle x86 compatível.

## Conectar

No conversor, selecione o driver **Oracle** e informe endereço/serviço, usuário
e senha da origem. Exemplo de nome do banco: `127.0.0.1:1521/FREEPDB1`.
O Instant Client não contém banco nem credenciais e não restaura dumps `.dmp`:
o dump precisa ter sido importado em um servidor Oracle antes da conversão.

Voltar para [Conectar bancos](Conectarbancos.md) ou [Conteúdos](README.md).
