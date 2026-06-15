Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Conversão Protheus
## Informações
- **Banco**
    - Tipo: Protheus (tabelas padrão, ex.: `SB1010` Produtos, `SAH010` Unidades, `SBM010` Grupos, `SYD010` NCM)
    - Versão Especifica: N/A

> ⚠️ **Conversão em evolução.** O formulário do Protheus foi reescrito no padrão atual de conversão e, neste momento, entrega **apenas o fluxo de Produtos**. As demais entidades (Pessoas, Contas, Movimentos) ainda **não** estão implementadas — há chamado aberto para a conversão de Pessoas (Clientes, Fornecedor, Funcionário) e para o tratamento de base de origem **DataFlex**. Considere implementado somente o que está marcado abaixo.

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
|    ✅    |   ❌    |    ✅    |   ❌   |     ❌     |   ❌    |

Entidades cobertas na aba **Produtos**: Unidades, Famílias, NCM, Produtos, Produtos Códigos.

Caso necessário abrir chamada para implementação de alguma entidade

## Configurações iniciais
### Bancos de dados
Além de [conectar os bancos](Conectarbancos.md) origem e destino, a conversão lê as tabelas padrão do Protheus (prefixos `SB`, `SA`, `SY`…). Registros excluídos no Protheus são marcados no campo `D_E_L_E_T_` (`*` = excluído) e são ignorados pela conversão.

> Bases de origem em **DataFlex** dependem de uma etapa de transformação para SQL antes da conversão — recurso em desenvolvimento. Confirme com a equipe de conversão o formato da base de origem do cliente antes de iniciar.

## Configuração específica

A conversão Protheus não possui parâmetros na aba de configuração específica — segue a [Configuração Geral](ConfiguracaoGeral.md) e as configurações de cada aba.
