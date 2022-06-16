(def:coefficient_form)=
# Coefficient Form
> *(Of a polynomial)*. Represent a polynomial as a list of the coefficients associated to each power of the indeterminate variable.
---

(header:coeffs_vs_evals)=
## Coefficient Form vs Evaluation Form
Let's look at an example polynomial $p$, defined as $p(x) = x^3 + 4x^2 + 5$. How can we describe this polynomial in a computer program?

The first approach is to record a list of the coefficients in front of every power of the indeterminate $x$: `[5, 0, 4, 1]`. Here we ordered the coefficients from lowest to highest power; conveniently, the index of the elements of our array correspond to the power of $x$. As we recorded coefficients, this is known as the "coefficient form".

Another equivalent representation would be to provide evaluations of $p$ at a large enough number of known points. In fact, for a polynomial of degree $d$, we will always need at least $d+1$ points. In our case, we could evaluate $p$ at 4 points: $p(0) = 5$, $p(1) = 10$, $p(2) = 29$ and $p(3) = 68$. Again we could record this in an array as `[5, 10, 29, 68]`. This recording of evaluations is aptly named the "evaluation form".

There is no superior representation, each of these provide unique properties and can allow more efficient computation of specific operations. We can convert from coefficient form to evaluation form by evaluating the polynomial at $d+1$ points. The operation that converts from evaluation form back to coefficient form is known as [Lagrange interpolation](def:lagrange).