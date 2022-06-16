(def:lagrange)=
# Lagrange Interpolation
> A method to construct the unique polynomial of degree $d$ that passes through $d+1$ given points.
---

```{warning}
*Prerequisites: [Coefficient vs Evaluation Form](header:coeffs_vs_evals).*
```

Lagrange interpolation is one way to perform polynomial interpolation (recall that this is the process of recovering a polynomial from a set of known evaluations, see prerequisites above).

Let's say we've been given then following point-evaluation pairs $(x_1, y_1)$, $(x_2, y_2)$, $(x_3, y_3)$ and $(x_4, y_4)$. Since we have 4 pairs, we will be able to interpolate the unique polynomial $f$ of degree 4 such that $f(x_i) = y_i$ for all $i$.

The strategy is the following: for each $x_i$, we create a polynomial $l_i$ which evaluates to 0 at all the points we were given except $x_i$, where it evaluates to 1. We can then express the polynomial $f$ as $f(x) = \sum_i y_il_i(x)$.

```{note}
the $l_i$ polynomials are known as Lagrange basis polynomials.
```