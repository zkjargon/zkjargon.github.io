# Evaluation Form
> *Of a polynomial*. Represent a polynomial as a list of evaluations of the polynomial at given points.
---

Let's look at an example polynomial $p$, defined as $p(X) = X^3 + 4X^2 + 5$. How can we describe this polynomial in a computer program?

One approach is to provide evaluations of $p$ at a large enough number of known points. In fact, for a polynomial of degree $d$, we will always need at least $d+1$ points. In our case, we could evaluate $p$ at 4 points: $p(0) = 5$, $p(1) = 10$, $p(2) = 29$ and $p(3) = 68$. We could record this in an array as `p_evals = [5, 10, 29, 68]`. This recording of evaluations is aptly named the "evaluation form".

Another equivalent representation would be to provide a list of the coefficients in front of every power of the indeterminate $X$ (see [Coefficient Form](./coefficient_form.md)).

> **Coefficient Form vs Evaluation Form.**
> There is no strictly superior representation. The coefficient form allows for a more lightweight representation of sparse polynomials (polynomials where many of the coefficients are $0$). Indeed, we only need to record the non-zero coefficients. On the other hand, some operations such as polynomial multiplication are much more expensive in coefficient form ($\mathcal{O}(n^2)$) than they are in evaluation form ($\mathcal{O}(n)$).
>
> We can convert from coefficient form to evaluation form by evaluating the polynomial at $d+1$ points. The operation that converts from evaluation form back to coefficient form is known as polynomial **interpolation** ([Lagrange interpolation](./lagrange_interpolation.md) is one way to perform this operation).