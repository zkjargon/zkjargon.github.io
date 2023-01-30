# Coefficient Form
> *Of a polynomial*. Represent a polynomial as a list of the coefficients associated to each power of the indeterminate variable.
---

Let's look at an example polynomial $p$, defined as $p(X) = X^3 + 4X^2 + 5$. How can we describe this polynomial in a computer program?

One approach is to record a list of the coefficients in front of every power of the indeterminate $X$: `p_coeffs = [5, 0, 4, 1]`. Here we ordered the coefficients from lowest to highest power; conveniently, the index of the elements of our array correspond to the power of $X$. As we recorded coefficients, this is known as the "coefficient form".

Another equivalent representation would be to provide evaluations of $p$ at a large enough number of known points (see [Evaluation Form](./evaluation_form.md)).

> **Coefficient Form vs Evaluation Form.**
> There is no strictly superior representation. The coefficient form allows for a more lightweight representation of sparse polynomials (polynomials where many of the coefficients are $0$). Indeed, we only need to record the non-zero coefficients. On the other hand, some operations such as polynomial multiplication are much more expensive in coefficient form ($\mathcal{O}(n^2)$) than they are in evaluation form ($\mathcal{O}(n)$).
>
> We can convert from coefficient form to evaluation form by evaluating the polynomial at $d+1$ points. The operation that converts from evaluation form back to coefficient form is known as polynomial **interpolation** ([Lagrange interpolation](./lagrange_interpolation.md) is one way to perform this operation).