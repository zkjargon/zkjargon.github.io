# PLONK Arithmetization
> An [arithmetization](./arithmetization.md) for [arithmetic circuits](./circuit.md) defined by a gate equation and copy constraints that "wire" the gates together.
---

*⚠️ Prerequisites: [Arithmetization](./arithmetization.md), [Circuit](./circuit.md).*

The PLONK arithmetization was first proposed in the PLONK paper [[GWC19]](https://eprint.iacr.org/2019/953) as a means to arithmetize circuits where each gate has 2 inputs and 1 output.

**(Gate Equation).** A single gate with inputs $a, b$ and output $c$ is defined by the equation:
$$
(q_L)a + (q_R)b + (q_O)c + (q_M)ab + (q_C) = 0
$$
The $q$ values are known as "**selectors**" and allow to specialize each gate into enforcing a specific operations. The table below provides some examples:

| Gate Type | Selector Values | Simplified Gate Equation |
| --------- | --------------- | ------------------------ |
| Addition  | $q_L = 1$, $q_R = 1$, $q_O = -1$, $q_M = 0$, $q_C = 0$ | $a + b -c = 0$ |
|Multiplication| $q_L = 0$, $q_R = 0$, $q_O = -1$, $q_M = 1$, $q_C = 0$ | $ab -c = 0$|
|Public Input is $x$| $q_L = 1$, $q_R = q_O = q_M = 0$, $q_C = -x$ | $a -x = 0$ |

**(Copy Constraints).** Gates are connected together using copy constraints. Consider two gates for which we want to enforce that the output of the first gate is the input to the second gate. Let's label our wires: left input, right input and output of the first gate will be $1, 2, 3$, while left input, right input and output of the second gate will be $4, 5, 6$. To enforce that the value on wire $3$ is the same as the value on wire $4$, we show that these values are interchangeable; i.e. that they can be **permuted** without affecting the validity of the gate equations.


## Variants and Extensions
The PLONK arithmetization is widely used in practice for its versatility. It has been extended to support:
- **custom gates** - we can add custom functions to the gate equation. To do so we create a new selector $q_G$ and multiply it by some function $g$ of the wire values $a, b, c$. The new gate equation becomes: $(q_L)a + (q_R)b + (q_O)c + (q_M)ab + (q_C) + (q_G)g(a, b, c) = 0$.
- **larger fan-in and fan-out** - the PLONK arithmetization can be extended to support more than 2 inputs and 1 output for each gate.
- **lookup tables** - the gate equation can also be extended to support lookup tables (article on those coming soon).

Some commonly used names for these variants:
- **TurboPLONK** -> PLONK arithmetization + custom gates + larger fan-in/fan-out
- **PlonkUp** -> PLONK arithmetization + lookup tables
- **UltraPLONK** & **PLONKish** -> PLONK arithmetization + custom gates + larger fan-in/fan-out + lookup arguments

## References
[[GWC19]](https://eprint.iacr.org/2019/953) Gabizon, Ariel, Zachary J. Williamson, and Oana Ciobotaru. "PLONK: Permutations over Lagrange-bases for Oecumenical Non-interactive arguments of Knowledge." Cryptology ePrint Archive (2019).