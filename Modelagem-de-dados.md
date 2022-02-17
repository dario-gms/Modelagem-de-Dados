# Representação gráfica de modelo ER(Entidade e Relacionamento)

![repGraf](https://user-images.githubusercontent.com/86432208/154335282-aa4f1b0a-6a84-4b4c-8fb7-39516630e772.png)

## Tipos Gráficos

**Entidade**: *Representada por um retângulo.*

**Atributo**: *representado por um cículo oval.*

**Atributos compostos**: *São atributos ligados a outros atributos por linhas retas.*

**Atributos multivalorados**: *são representados por círculos ovais duplos.*

**Atributos chaves**: *São sublinhados.*

**Relacionamentos:** *São representados por um losango.*


## Tipos de Ligação

> *Atributos e entidades são ligadas por linhas retas.*

## Tipos de Entidade

**Entidade Fraca:** *É aquela que não identificamos nenhum atributo chave.*

## Relacionamentos

**Grau de relacionamento:** *É o número de entidades envolvidas no relacionamento.*

- Grau 2 - **Binário**: *Quando possui relacionamento envolvendo duas entidades.*
- Grau 3 - **Ternário**: *Quando possui relacionamento envolvendo três entidades.*
- **Relacionamento recursivo** - *Quando uma entidade se relaciona com ela mesma.*

## Cardinalidade entre relacionamentos

> *É dividido entre cardinalidade parcial e total.*
- **Total**: *é representado por duas linhas.*
- **Parcial**: *é represntado por uma linha.*

![cardinalidade](https://user-images.githubusercontent.com/86432208/154539673-d99b55e4-20bc-4931-8f4f-97bde56cb2a5.png)

> Geralmente a cardinalidade é representada da seguinte forma: (1, 1), (1, N), (0, 1), sendo 1 considerado cardinalidade **total** e 0 **parcial**. **N** representa uma quantidade variável, podendo ser qualquer valor.

> 1:1 ou (1, 1) representa uma entidade que atua somente em um local.

> **Migração de atributos**: *somente podemos migrar o atributo do relacionamento para o lado 1.*
