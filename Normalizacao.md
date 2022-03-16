# Modelagem de banco de dados relacional: normalização

### Diretrizes para determinar um bom modelo relacional:

- Dependência Funcional.
- Primeira Forma Normal.
- Segunda Forma Normal.
- Terceira Forma Normal.
- Forma de Boyce-Codd.
- Quarta Forma Normal.
- Quinta Forma Normal.

### Medição de grupamentos de atributos

- **Nível Lógico:** Forma com que usuários interpretam os esquemas das relações e seus atributos.
- **Nível Físico:** Forma com que as tuplas são armazenadas e atualizadas na base.

**Quatro garantias:**

- Garantir que a semântica dos atributos seja clara no esquema;
- Reduzir informações redundantes nas tuplas;
- Reduzir os valores nulos nas tuplas;
- Impedir a possibilidade de gerar tuplas falsas.

### Semântica clara dos atributos

#### Diretriz 1:

> Projete um esquema de relação de modo que seja fácil de explicar seu significado.
 
![Captura de tela 2022-03-11 095725](https://user-images.githubusercontent.com/86432208/157870845-5cefbea4-82c9-4b2c-a89f-cf2e2c810db0.png)

#### Diretriz 2: 

> Projete esquemas de Relações de modo que nenhuma anomalia de inserção, exclusão e modificação esteja presente nas Relações.

#### Diretriz 3:

> Evite ao máximo colocar atributos em uma relação básica cujos valores podem ser nulos com frequência.

![image](https://user-images.githubusercontent.com/86432208/157895229-fd8dbeed-295b-4a72-bf2f-911359203c14.png)
![image](https://user-images.githubusercontent.com/86432208/157895381-a503cd27-dd3f-4dc9-a5c8-521840714186.png)

#### Diretriz 4:

> Projete esquemas de relação de modo que possam ser unidos em condições de igualdade sobre atributos pares relacionados corretamente de modo que não seja gerada nenhuma tupla falsa.



### Interpretações do Nulo

- O valor do atributo não se aplica a esta Tupla.
- O valor do atributo na Tupla é desconhecido.
- O valor do atributo na Tupla é conhecido, mas está ausente.

### Dependência Funcional

> Diz que, se dois conjuntos de atributos são Dependentes Funcionais se tuplas do conjunto Y depende do conjunto X. Ou os valores de tuplas pertencentes ao conjunto X determinam exclusivamente os valores do conjunto Y.
> 
> Ela é uma proriedade do esquema da relação e não um estado da relação. Ela não pode ser deduzida de forma automática.

### Forma Normal (FN)

> **Conjunto de regras que visa, principalmente, a organização de um projeto de banco de dados para reduzir a redundância, aumentar a integridade e o desempenho dos dados.**

![image](https://user-images.githubusercontent.com/86432208/158438809-dabbe4e7-917b-4e6c-ae07-ae3a4bf690fe.png)

### Primeira forma normal (1FN)

> - Cada Tupla contém exatamente um valor para cada atributo;
> 
> - Os atributos devem ser atômicos e indivisíveis;
> 
> - Atributos compostos e multivalorados devem ser representados por novas linhas ou novas tabelas;
> 
> - Na decomposição, todos os dados da primeira relação estão representados em duas novas relações.

### Segunda forma normal (2FN)

> - Conceito baseado em Dependência Funcional Total;
> 
>  Uma Dependência Funcional Total é aquela em que a remoção de algum atributo A do conjunto X faz com que a Dependência deixe de valer.
>
>  Uma Dependência Funcional Parcial é aquela em que a remoção de algum atributo A do conjunto X faz com que a Dependência ainda se mantenha.
>  
>  O esquema de relação R está na segunda forma normal se cada atributo não principal de A em R por total e funcionalmente dependente da chave primária de R.
>  
>  Uma relação encontra-se na segunda forma normal se, e somente se, estiver na primeira forma normal e não contiver dependências parciais que envolvam a chave primária.

![image](https://user-images.githubusercontent.com/86432208/158670390-b747fe32-6901-4e16-81a4-1c42608ad201.png)

- DF1 - Envolve todas as duas chaves primárias - TOTAL - É uma DF Total.
- DF2 - Envolve somente uma das chaves primárias para ser TOTAL - É uma DF Parcial.
- DF3 - Envolve somente uma das chaves primárias para ser TOTAL - É uma DF Parcial.

> O fato da relação não estar na segunda forma normal gera anomalias de Inserção, Modificação ou Exclusão.




