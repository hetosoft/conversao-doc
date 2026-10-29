Voltar: [Conversão Específica](ConfiguracaoEspecifica.md)

# Conversão CIGAM

## Informações

- **Origem:** schema `CIGAM` em um servidor Oracle com o dump do cliente restaurado.
- **Destino:** bancos Sol.NET no SQL Server.
- **Ambiente validado em 22/10/2026:** Oracle 26ai e conversor Win64.

A conversão lê diretamente o Oracle e grava no Sol.NET SQL Server. Não é
necessário copiar as tabelas CIGAM para um SQL Server intermediário.

### Entidades disponíveis

| Aba | Conversões |
| --- | --- |
| Pessoas | Cliente, Fornecedor, Fabricante, Transportadora |
| Produtos | Unidade, Familia, Grupo, NCM, Produto, ProdCodigos, ProdSitEstoque |
| Financeiro | Portadores, PlanosConta, CondicoesPagamento |
| Movimentos | SaidaPedido, EntradaFiscal, SaidaFiscal |
| Contas | ContasPagar, ContasReceber, incluindo boletos |

## Configurações iniciais

### Preparar o banco de origem

O arquivo `.dmp` (ou `.dmp.gz`) é um dump do Oracle Data Pump. Ele precisa ser
importado em um servidor Oracle antes de conectar o conversor. Instalar as DLLs
na estação não restaura o dump nem substitui esse servidor.

Após a importação, confira os erros e as contagens das tabelas antes de iniciar
a conversão. O procedimento técnico de restauração e tratamento dos erros está
no [guia CIGAM do projeto Sol.NET](https://github.com/hetosoft/ProjetosSol.NET/blob/395aa4f83888a1d970dc36f431402a34084e9546/Sol.NET_Conversao/CIGAM_MIGRACAO_ORACLE.md).

### Cliente Oracle na estação

O conversor Win64 usa o Oracle Instant Client Basic x64 pelo FireDAC para ler
um banco Oracle. Instale o cliente na máquina que executa `SolNET_Conversao.exe`,
mesmo quando o servidor Oracle está no Docker ou em outra máquina.

As DLLs são obtidas diretamente da Oracle. Não é necessário Git LFS, instalar
ODBC ou copiar arquivos para System32.

#### Instalar pelo script

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

#### Instalação manual

Extraia o ZIP oficial e copie todas as DLLs de `instantclient_23_26`,
`BASIC_LICENSE` e `BASIC_README` para a pasta do conversor Win64 fechado.
Preserve os avisos ao distribuir as bibliotecas. Não misture versões nem
arquiteturas; um conversor Win32 exige um cliente Oracle x86 compatível.

### Conectar os bancos

Além das orientações gerais de [conexão dos bancos](Conectarbancos.md), configure:

| Conexão | Configuração |
| --- | --- |
| Origem | Driver **Oracle**; nome do banco no formato `127.0.0.1:1521/FREEPDB1`; usuário com leitura do schema `CIGAM`; senha dessa conta; charset `UTF8` |
| Origem auxiliar, se habilitada | Mesma conexão Oracle da origem principal |
| Destino e destino auxiliar | Driver **SQL Server**; servidor da instância, nome dos bancos Sol.NET preparados para a implantação e credenciais do destino |

Uma origem SQL Server é recusada pelo formulário CIGAM. O Instant Client não
contém banco nem credenciais.

## Configuração específica

Configure o [mapa de empresas](ConfiguracaoDeEmpresa.md) de acordo com o banco
do cliente, preservando os códigos da origem, inclusive zeros à esquerda.
Não reutilize automaticamente o mapa de outra implantação.

No destino, configure os padrões financeiros da tela **601**, o Produto Diverso,
as naturezas fiscais e o banco de imagens/documentos (`BANCOBLOB`). Cadastros
fiscais ausentes no template precisam ser preenchidos pela implantação.

## Ordem de execução

1. Pessoas: Cliente, Fornecedor, Fabricante e Transportadora.
2. Produtos: Unidade, Familia, Grupo, NCM, Produto, ProdCodigos e ProdSitEstoque.
3. Financeiro: Portadores, PlanosConta e CondicoesPagamento.
4. Cadastre o Produto Diverso no destino, após executar ProdCodigos.
5. Movimentos: SaidaPedido, EntradaFiscal e SaidaFiscal, separados por ano.
6. Contas: ContasPagar e ContasReceber, incluindo os boletos.

Configure o [período](ConfiguracaoDeData.md) e o status dos títulos antes de
converter movimentos e contas. Os períodos incluem todo o dia final.

Os movimentos são históricos: não geram estoque nem financeiro. O estoque é
importado por **ProdSitEstoque**. Os títulos a receber não são vinculados às
notas fiscais.

Ao executar movimentos em períodos separados, **não habilite exclusão entre as
execuções**: a exclusão considera o tipo de movimento, não o período, e pode
remover movimentos convertidos anteriormente.

## Conferência

Compare as quantidades, os valores, os códigos e os vínculos com a origem.
Confira preços/custos, saldos de estoque, totais dos movimentos, vencimentos,
descontos e boletos. Uma execução sem erros registrados não substitui a
conferência dos dados e do mapa de empresas.

Voltar para [Conversão Específica](ConfiguracaoEspecifica.md) ou [Conteúdos](README.md).
