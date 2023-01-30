# Lagrange Interpolation
> A method to construct the unique polynomial of degree $d$ that passes through $d+1$ given points.
---

*⚠️ Prerequisites: [Coefficient vs Evaluation Form](./coefficient_form.md).*

Lagrange interpolation is one way to perform polynomial interpolation (recall that this is the process of recovering a polynomial from a set of known evaluations, see prerequisites above).

Let's say we've been given then following point-evaluation pairs $(x_1, y_1)$, $(x_2, y_2)$, $(x_3, y_3)$ and $(x_4, y_4)$. Since we have 4 pairs, we will be able to interpolate the unique polynomial $f$ of degree 4 such that $f(x_i) = y_i$ for all $i$.

The strategy is the following: for each $x_i$, we create a polynomial $L_i$ which evaluates to 0 at all the points we were given except $x_i$, where it evaluates to 1. We can then express the polynomial $f$ as: 
$$f(X) = \sum_{i=1}^4 y_iL_i(X)$$


The set of all $L_i$ polynomials is known as the **Lagrange basis** for the evaluation domain (here, the set of all $x_i$ values).