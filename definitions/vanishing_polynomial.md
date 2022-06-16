# Vanishing Polynomial
> The unique polynomial of degree $d$ that evaluates to $0$ at all points of a domain of size $d$.

The vanishing polynomial over a set $\mathbb{K}$, often denoted $z_\mathbb{K}$, is the polynomial which has a single root at each element of $\mathbb{K}$. It can be explicitly written as:

$$
z_\mathbb{K}(x) = \prod_{k \in \mathbb{K}} (x-k)
$$


By definition, the vanishing polynomial over $\mathbb{K}$ will have the following properties:
- it is unique.
- it is of degree $|\mathbb{K}|$.
- for all $k \in \mathbb{K}$, $z_\mathbb{K}(k) = 0$. (Hence the name vanishing!)