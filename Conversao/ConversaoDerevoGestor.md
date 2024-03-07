# Conversão Derevo Gestor  
## Informações  
- **Banco**  
    - Tipo: Firebird  
    - Versão Especifica: Versão 2.5  
  
## Configuração específica  
### Configuração de Padrão  
Foi identificado que o sistema Derevo possui versões diferentes de banco de dados. O padrão deve ser selecionado na aba de configuração especifica  

### Identificando quais padrões usar

#### Padrão 1
- Bando de dados: Firebird 2.5
- Nome usual do banco: SAD_GESTOR-xxxxxxxx.FDB
- Não possui a tabela `SM_CD_EF_NCM_TRIBUTACAO_F` 
#### Padrão 2
- Banco de dados: Firebird 2.5
- Nome usual do banco: SAD_GESTOR-xxxxxxxx.FDB
- Possui a tabela `SM_CD_EF_NCM_TRIBUTACAO_F`
#### Padrão 3
- Banco de dados: Firebird 3.0
- Nome usual do banco: DEREVO_GESTOR
- Não possui a tabela `SM_CD_EF_NCM_TRIBUTACAO_F` 

### Verifique as tabelas de botões 
- Legenda:
	- ✅ = Ok
	- ⚠️ = Incerto
	- ❌ = Não implementado
#### Pessoas

|         | Tipo 1 | Tipo 2 | Tipo 3 |
| ------- | ------ | ------ | ------ |
| Pessoas | ✅     | ✅     | ✅     | 
| Marcas  | ✅     | ✅     | ✅     |
#### Produtos

|                        | Tipo 1 | Tipo 2 | Tipo 3 |
| ---------------------- | ------ | ------ | ------ |
| Família                | ✅     | ✅     | ✅     |
| Grupo                  | ✅     | ✅     | ✅     |
| Sub Grupo              | ✅     | ✅     | ✅     |
| Unidade                | ✅     | ✅     | ✅     |
| Tributação Federal     | ✅     | ✅     | ✅     |
| NCM                    | ✅     | ✅     | ✅     |
| Produto                | ✅     | ✅     | ✅     |
| Produtos Códigos       | ✅     | ✅     | ✅     |
| Produtos Troca         | ✅     | ✅     | ⚠️     |
| Produtos Linkados      | ✅     | ✅     | ⚠️     |
| Promoção               | ✅     | ✅     | ⚠️     |
| Prod. Situação Estoque | ✅     | ✅     | ⚠️     |

#### Contas

|                | Tipo 1 | Tipo 2 | Tipo 3 |
| -------------- | ------ | ------ | ------ |
| Portadores     | ✅     | ✅     | ✅     |
| Tipo Documento | ✅     | ✅     | ✅     |
| Plano Contas   | ✅     | ✅     | ✅     |
| Contas PR      | ✅     | ✅     | ✅     |

#### Movimentos

|                        | Tipo 1 | Tipo 2 | Tipo 3 |
| ---------------------- | ------ | ------ | ------ |
| Tipo Movimentos        | ✅     | ✅     | ✅     |
| Movimento de Entrada   | ✅     | ✅     | ✅     |
| Movimento de Saída     | ✅     | ✅     | ✅     |
| Venda Pedido           | ❌     | ❌     | ✅     |
| Cupom                  | ✅     | ⚠️     | ✅     |
| Referência NFE         | ✅     | ✅     | ✅     |
| Histórico de Movimento | ✅     | ✅     | ✅     |
