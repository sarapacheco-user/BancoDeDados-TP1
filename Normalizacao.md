
Isso já está normalizado. Caso o salário fosse dependente do departamento isso causaria uma dependência,
mas como não é dependente nem de departamento, nem de título, já está normalizado.
Nenhum dos campos citados acima dependem um dos outros.

# *Explicação*

## 1ª forma normal 
  Todos os atributos em todas as colunas tem APENAS valores atômicos, não divisíveis. Por exemplo, caso o endereço do cliente fosse 
  um só atributo, a tabela não estaria normalizada, mas já está dividido em bairro, lote, cidade, etc.
  Além disso, não há grupos de repetição ou listas de valores múltiplos em uma mesma coluna, e há apenas uma chave primária para cada tabela.
  
## 2ª forma normal 
   Já está na 1a forma normal, então tudo o que precisa ser analisado é a possível existência de dependências parciais.
   Como não existem partes das chaves primárias, já está na segunda forma normal.
   
## 3ª forma normal 

   Já está na 1a forma normal, então tudo o que precisa ser analisado é a possível existência de dependências parciais.
   Como não existem dependências transitivas, já está na segunda forma normal.
