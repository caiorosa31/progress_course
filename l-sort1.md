
## 📁 l-sort1.p — Ordenação de Clientes por País e Nome


### 🔍 Explicação:

Neste exercício, praticamos a ordenação de registros com BY, organizando os dados por país e, dentro de cada país, por nome. Ideal para relatórios classificados.

---


## 🔍 Código explicado

```bash
CURRENT-WINDOW:WIDTH = 200.
🔵 /* Ajusta a largura da janela para melhor apresentação */

FOR EACH customer NO-LOCK 
    WHERE BY customer.country 
          BY customer.NAME :
    🔵 /* Ordena os registros por país e, em seguida, por nome */

    DISPLAY customer.custnum
            customer.NAME
            customer.country
            customer.creditLimit WITH WIDTH 180.
    🔵 /* Exibe número, nome, país e limite de crédito do cliente com largura definida */

END.

```



## 📘 Resumo Didático

#### Este exercício ensina:

Uso do BY em FOR EACH para ordenar os dados exibidos.

A ordenação múltipla (por dois campos) permite relatórios mais organizados.

Ideal para navegação por grandes volumes de registros ordenados.

Exibe campos estratégicos como limite de crédito, úteis para análise comercial.
