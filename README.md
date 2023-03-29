
## Modelando e criando Banco de dados

Simulação de um ecommecer, usando mudelagem de dados no PostgresSQL. Intuito de fortalecer os conhecimento adquiridos durante as aulas na Cubos Academy.

Abaixo tem alguns exemplos de como as tabelas se comportam no PostgresSQL. Para uma melhor visualização, tem a imagem salva neste repositório.

1 - Tabela `categorias` com as seguintes informações.

| nome       |
| ---------- |
| frutas     |
| verduras   |
| massas     |
| bebidas    |
| utilidades |

2 - Tabela `produtos` com as seguintes informações:

| nome                        | descricao                                                                                                    | preco | quantidade_em_estoque | categoria_id              |
| --------------------------- | ------------------------------------------------------------------------------------------------------------ | ----- | --------------------- | ------------------------- |
| Mamão                       | Rico em vitamina A, potássio e vitamina C                                                                    | 300   | 123                   | `id_categoria_frutas`     |
| Maça                        | Fonte de potássio e fibras.                                                                                  | 90    | 34                    | `id_categoria_frutas`     |
| Cebola                      | Rico em quercetina, antocianinas, vitaminas do complexo B, C.                                                | 50    | 76                    | `id_categoria_verduras`   |
| Abacate                     | NÃO CONTÉM GLÚTEN.                                                                                           | 150   | 64                    | `id_categoria_frutas`     |
| Tomate                      | Rico em vitaminas A, B e C.                                                                                  | 125   | 88                    | `id_categoria_verduras`   |
| Acelga                      | NÃO CONTÉM GLÚTEN.                                                                                           | 235   | 13                    | `id_categoria_verduras`   |
| Macarrão parafuso           | Sêmola de trigo enriquecida com ferro e ácido fólico, ovos e corantes naturais                               | 690   | 5                     | `id_categoria_massas`     |
| Massa para lasanha          | Uma reunião de família precisa ter comida boa e muita alegria.                                               | 875   | 19                    | `id_categoria_massas`     |
| Refrigerante coca cola lata | Sabor original                                                                                               | 350   | 189                   | `id_categoria_bebidas`    |
| Refrigerante Pepsi 2l       | NÃO CONTÉM GLÚTEN. NÃO ALCOÓLICO.                                                                            | 700   | 12                    | `id_categoria_bebidas`    |
| Cerveja Heineken 600ml      | Heineken é uma cerveja lager Puro Malte, refrescante e de cor amarelo-dourado                                | 1200  | 500                   | `id_categoria_bebidas`    |
| Agua mineral sem gás        | Smartwater é água adicionado de sais mineirais (cálcio, potássio e magnésio) livre de sódio e com pH neutro. | 130   | 478                   | `id_categoria_bebidas`    |
| Vassoura                    | Pigmento, matéria sintética e metal.                                                                         | 2350  | 30                    | `id_categoria_utilidades` |
| Saco para lixo              | Reforçado para garantir mais segurança                                                                       | 1340  | 90                    | `id_categoria_utilidades` |
| Escova dental               | Faça uma limpeza profunda com a tecnologia inovadora                                                         | 1000  | 44                    | `id_categoria_utilidades` |
| Balde para lixo 50l         | Possui tampa e fabricado com material reciclado                                                              | 2290  | 55                    | `id_categoria_utilidades` |
| Manga                       | Rico em Vitamina A, potássio e vitamina C                                                                    | 198   | 176                   | `id_categoria_frutas`     |
| Uva                         | NÃO CONTÉM GLÚTEN.                                                                                           | 420   | 90                    | `id_categoria_frutas`     |

3 - Tabela `clientes` com as seguintes informações

| cpf            | nome               |
| -------------- | ------------------ |
| 803.713.500-42 | José Augusto Silva |
| 676.428.690-61 | Antonio Oliveira   |
| 631.933.100-34 | Ana Rodrigues      |
| 756.705.050-18 | Maria da Conceição |

4 - Tabela `vendedores` com as seguintes informações

| cpf            | nome                 |
| -------------- | -------------------- |
| 825.398.410-31 | Rodrigo Sampaio      |
| 232.625.460-03 | Beatriz Souza Santos |
| 280.071.550-23 | Carlos Eduardo       |



