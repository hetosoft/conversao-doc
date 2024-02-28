# Pessoas  
Aba de conversão de Pessoas (Clientes, Fornecedores, etc). Basta utilizar os botões disponíveis  
![TabPessoas.png](./Imagens/TabPessoas.png)  
## Aba de configuração de pessoas  
Na aba de configurações de pessoas está disponível a configuração `Unificar Pessoas`.  
### Unificar Pessoas  
- A configuração `Unificar Pessoas` ativa uma validação que verifica se a pessoa que está sendo convertida já foi convertida em outro botão.  
- Exemplo: Um a Tabela Cliente de um sistema possui um cliente X. Esse cliente também está cadastrado na tabela Fornecedores do mesmo sistema. Ao ativar a opção `Unificar Pessoas`, ao invés de serem convertidos dois registros do cliente X, um com `TPFORNECEDOR = 1` e outro com `TPCLIENTE = 1` apenas um registro do cliente X será convertido contendo tanto `TPFORNECEDOR = 1` quanto `TPCLIENTE = 1`  
   - Sem Unificar pessoas  
        ``` sql  
        SELECT DESCRICAO, TPFORNECEDOR, TPCLIENTE FROM PESSOAS WHERE DESCRICAO = 'Cliente X'  
        ```  
  
        | DESCRICAO | TPFORNECEDOR | TPCLIENTE |     |   
        | --------- | ------------ | --------- | --- |  
        | Cliente X | 1            | 0         |     |  
        | Cliente X | 0            | 1         |     |  
		  
    - Com Unificar Pessoas  
        ```sql  
        SELECT DESCRICAO, TPFORNECEDOR, TPCLIENTE FROM PESSOAS WHERE DESCRICAO = 'Cliente X'  
        ```  
  
       | DESCRICAO   | TPCLIENTE | TPFORNECEDOR |     |  
       | ----------- | --------- | ------------ | --- |  
       |  Cliente X  |  1        | 1            |     |    
      
> [!IMPORANT]  
> `Unificar Pessoas` valida se duas pessoas são idênticas através do CPF/CNPJ e RG/Inscrição estadual. Caso essas informações não estejam devidamente cadastradas no banco de origem a unificação não ocorrerá  
## Conversão de endereços e contatos  
Normalmente as conversões de pessoas automaticamente convertem endereços e contatos como uma sub-conversão  
  
## Entidades Comuns  
- `Pessoas`  
    - Tabela: `PESSOAS`  
    - Dependências: Sem dependências  
## Ver também  
- [Configuração Geral](./Configura%C3%A7%C3%A3o%20Geral.md)  
- [Produtos](./Produtos.md)