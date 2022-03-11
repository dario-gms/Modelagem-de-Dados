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


