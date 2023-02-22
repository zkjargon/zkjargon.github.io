# Vanishing Polynomial
> The unique polynomial of degree $d$ that evaluates to $0$ at all points of a domain of size $d$.
---

The vanishing polynomial over a set $\mathbb{K}$, often denoted $z_\mathbb{K}$, is the polynomial which has a single root at each element of $\mathbb{K}$. It can be explicitly written as:

$$
z_\mathbb{K}(X) = \prod_{k \in \mathbb{K}} (X-k)
$$


By definition, the vanishing polynomial over $\mathbb{K}$ will have the following properties:
- it is unique.
- it is of degree $|\mathbb{K}|$.
- for all $k \in \mathbb{K}$, $z_\mathbb{K}(k) = 0$. (Hence the name vanishing!)

> **Vanishing Polynomial for Roots of Unity.** When the set $\mathbb{K}$ is a set of $n$-th [roots of unity](./roots_of_unity.md), the vanishing polynomial can be expressed as: 
> $$ z_\mathbb{K}(X) = X^n - 1 $$
> To see why this is the case, let's consider the set $\left\{ 1, 2, 4 \right\}$ which we know are the $3$-rd roots of unity in $\mathbb{F}_7$ (see the [Roots of Unity](./roots_of_unity.md#example-in-a-finite-field) article):
> $$ \begin{align*} z_\mathbb{K}(X) &\equiv (X-1)(X-2)(X-4) &(\text{mod} \, 7)\\ &\equiv (X^2 - 3X + 2)(X-4) &(\text{mod} \, 7) \\&\equiv X^3 - 4X^2 - 3X^2 + 12X + 2X - 8 &(\text{mod} \, 7) \\ &\equiv X^3 - 7X^2 + 14X -8 &(\text{mod} \, 7) \\&\equiv X^3 -1  &(\text{mod} \, 7) \end{align*} $$
> Why does this matter? Expressing $z_\mathbb{K}$ in this way makes it very efficient to evaluate it at one point!