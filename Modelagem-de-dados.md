# Representação gráfica de modelo ER(Entidade e Relacionamento) e seus conceitos

![repGraf](https://user-images.githubusercontent.com/86432208/154335282-aa4f1b0a-6a84-4b4c-8fb7-39516630e772.png)

## Tipos Gráficos

**Entidade**: *Representada por um retângulo.*

**Atributo**: *representado por um cículo oval.*

**Atributos compostos**: *São atributos ligados a outros atributos por linhas retas.*

**Atributos multivalorados**: *são representados por círculos ovais duplos.*

**Atributos chaves**: *São sublinhados.*

**Relacionamentos:** *São representados por um losango.*

**Atributo derivado**: *representado por um círculo oval pontilhado.*

### Exemplos gráficos:

![graf](https://user-images.githubusercontent.com/86432208/154693513-70db00e8-9bb6-455f-b787-c43420572800.png)
![graf2](https://user-images.githubusercontent.com/86432208/154694322-0eef4d53-29bb-464c-b8b6-aff380adb392.png)
![graf3](https://user-images.githubusercontent.com/86432208/154694739-df7d8dfa-3f9e-4eb4-9e0d-7b911160bd9a.png)




****Obs:*** *Alguns softwares podem ter uma representação gráfica diferente, os exemplos acima são os geralmente utilizados, mas não os únicos.*

## Tipos de Ligação

> *Atributos e entidades são ligadas por linhas retas.*

## Tipos de Entidade

**Entidade forte:** *É a entidade que possui atributo chave*

**Entidade Fraca:** *É aquela que não identificamos nenhum atributo chave.*
> Sempre estará associada a uma entidade forte. Neste caso a identidade forte será **Entidade Proprietária.**

## Relacionamentos

**Grau de relacionamento:** *É o número de entidades envolvidas no relacionamento.*

- Grau 2 - **Binário**: *Quando possui relacionamento envolvendo duas entidades.*
- Grau 3 - **Ternário**: *Quando possui relacionamento envolvendo três entidades.*
- **Relacionamento recursivo** - *Quando uma entidade se relaciona com ela mesma.*
- **Relacionamento de uma entidade forte com uma entidade fraca:** *é representado por um losando duplo e é chamado de relacionamento de identificação.*

## Cardinalidade entre relacionamentos

> *É dividido entre cardinalidade parcial e total.*
- **Total**: *é representado por duas linhas.*
- **Parcial**: *é represntado por uma linha.*

![cardinalidade](https://user-images.githubusercontent.com/86432208/154539673-d99b55e4-20bc-4931-8f4f-97bde56cb2a5.png)

> Geralmente a cardinalidade é representada da seguinte forma: (1, 1), (1, N), (0, 1), sendo 1 considerado cardinalidade **total** e 0 **parcial**. **N** representa uma quantidade variável, podendo ser qualquer valor.

> 1:1 ou (1, 1) representa uma entidade que atua somente em um local.

> **Migração de atributos**: *somente podemos migrar o atributo do relacionamento para o lado 1.*




