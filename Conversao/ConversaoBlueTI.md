Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Conversão Blue TI
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
|    ✅    |   ✅    |    ✅    |   ✅   |     ✅     |   ❌    |

Além das entidades acima, a conversão Blue TI possui botões para **Fiscal** (Tributação Federal, NCM), **Embalagens** (Tipos de Embalagens, Embalagens), **Receituário** (Cultura, Configuração de Bula, ART Controle, Diagnósticos) e **Fórmulas** (Fórmulas de Produtos), úteis para clientes do segmento agronômico.

Caso necessário abrir chamada para implementação de alguma entidade

## Configurações iniciais
### Bancos de dados
Além de [conectar os bancos](Conectarbancos.md) origem e destino, a origem do Blue TI é **SQL Server**: selecione o banco de dados de origem na caixa de seleção da aba de conexão, conforme a documentação de [Conectar bancos](Conectarbancos.md).

### Imagens dos produtos
O Blue TI armazena as imagens dos produtos em arquivos no disco (não no banco). Para converter as imagens (botão `Imagens`, aba `Produtos`), informe antes o **Caminho das imagens em disco** na seção **Configuração específica**, abaixo.

## Configuração específica

Na aba `Configuração Blue TI` ficam os parâmetros usados pela conversão:

### Id Empresa Padrão
Empresa do SOL.NET para a qual os registros sem empresa definida na origem serão convertidos.

### Caminho das imagens em disco
Pasta onde estão os arquivos de imagem dos produtos no servidor de origem. Usado pelo botão `Imagens` da aba `Produtos`.

### De/Para de formas de pagamento
A estrutura de formas de pagamento do Blue TI é mapeada para as formas do SOL.NET. Informe, em cada campo, a forma de pagamento do SOL.NET correspondente:

- **Dinheiro**
- **Cheque**
- **Ticket, VA_VR**
- **PIX**
- **Cartão Débito**
- **Cartão Crédito**

### Caixa Conciliação
Caixa do SOL.NET usado na conciliação dos lançamentos financeiros convertidos.
