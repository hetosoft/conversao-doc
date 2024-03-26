Voltar: [Conversão Especifica](ConfiguracaoEspecifica.md)
# Conversão Alfa Software 

## Informações  
- **Banco**  
    - Tipo: SQL Server  
    - Versão Especifica: 2000  
    - Obs: Converter para mais recente utilizando o SQL Server 2008 como ponte, se necessário  

### Abas implementadas

#### Legenda

| Ícone | Status                   |
|:-----:| ------------------------ |
|  ✅   | Implementado: Completo   |
|  ⚠️   | Implementado: Incompleto |
|  ❌   | Não implementado         |
  
#### Implementação Alfa Software

| Cadastro | Pessoas | Produtos | Contas | Movimentos | Objetos |
|:--------:|:-------:|:--------:|:------:|:----------:|:-------:|
|    ✅    |   ✅    |    ✅    |   ❌   |     ❌     |   ✅    |

## Configuração específica  

### Configuração de Situação estoque:  
![AlphaEspecifico.png](./Imagens/AlphaEspecifico.png)

Na tabela de estoque de origem existem os campos `Estoque1` e `Estoque2`. Determine através das caixas de seleção, para qual situação estoque cada campo origem deve ser convertido 