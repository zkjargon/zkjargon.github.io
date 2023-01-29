(def:roots_unity)=
# Roots of Unity
> The $n$-th root of unity is a number $\omega$ such that $\omega^n = 1$; we often call roots of unity the set $\left\{ 1, \omega, \omega^2, \dots, \omega^{n-1}\right\}$.
---

The $n$-th root of unity is a number $\omega$ such that $\omega^n = 1$. When we use the plural, $n$-th roots of unity, we refer to the set $\left\{ 1, \omega, \omega^2, \dots, \omega^{n-1}\right\}$.

## Example in the complex numbers
If we were working in a regular (read: not finite) field, the roots of unity would be complex numbers. For example you might already be familiar with the complex number $i$ which is in fact the 4-th root of unity in the set of complex numbers (you can check this by computing $i^4$). The associated set would be $\left\{ 1, i, -1, -i\right\}$.

## Example in a finite field
In a finite field, the definition of "roots of unity" directly maps to that of a multiplicative subgroup of order $n$. For example let's consider the field $\mathbb{F}_7$ with prime characteristic $7$. The elements of this field are $0$, $1$, $2$, $3$, $4$, $5$ and $6$. Let's look at the powers of $2$:

$$
2^1 = 2 \; (\text{mod} \, 7) \\
2^2 = 4 \; (\text{mod} \, 7) \\
2^3 = 1 \; (\text{mod} \, 7)
$$

So $2$ is the $3$-rd root of unity with the corresponding subgroup of order 3 being $\left\{ 1, 2, 4 \right\}$.