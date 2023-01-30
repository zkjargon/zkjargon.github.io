# R1CS
> *Acronym: Rank-1 Constraint System.* One way (amongst many others) to encode an arithmetic circuit into a set of arithmetic equations. *See [Arithmetization](./arithmetization.md).*
---

Rank-1 Constraint Systems (R1CS) are one way (amongst many others) to encode an arithmetic circuit. An R1CS circuit is defined by the following equation:
$$A\vec{z} \circ B\vec{z} = C\vec{z}$$
where $A$, $B$ and $C$ are square matrices of identical sizes, $\vec{z}$ is a vector and '$\circ$' denotes the element-wise product.

The matrices $A$, $B$ and $C$ are fixed and define the circuit. To satisfy the R1CS circuit, a prover must find a vector $\vec{z}$ for which the equality above is true. We can also include public inputs by changing the game slightly: we choose a vector $\vec{x}$ of public inputs and require that the prover finds a vector $\vec{w}$ such that the vector $\vec{z} = (\vec{x}||\vec{w})$ satisfies the R1CS equality[^1]. We call $\vec{x}$ the instance vector and $\vec{w}$ the witness vector.

> **R1CS in Action.**
> You can see R1CS in action in [Module 6 of the ZK Whiteboard Sessions](https://youtu.be/1oLzrbTBlbc?t=476) from 7:56 to 12:00. There, Mary Maller shows how to populate R1CS matrices to enforce that a value $w$ decomposes into three bits $b_0, b_1, b_2$ by enforcing the following equalities:
> $$ \begin{align} w &= b_0 + 2b_1 + 4b_2 \quad &\text{(decomposition)}\\ 0 &= b_i \cdot b_i - b_i \quad &\text{($b_i$ is $0$ or $1$)} \end{align}$$
> Note that she is working with a different yet equivalent matrix equation: $A\vec{z} \circ B\vec{z} - C\vec{z} = 0$

[^1] Here '$||$' denotes the concatenation operation.