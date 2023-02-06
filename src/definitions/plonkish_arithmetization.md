# PLONKish Arithmetization
> A group of [circuit](./circuit.md) [arithmetizations](./arithmetization.md) derived from the PLONK paper [[GWC19]](https://eprint.iacr.org/2019/953) -- their core ingredients are a gate equation and copy constraints that "wire" the gates together.
---

*⚠️ Prerequisites: [Arithmetization](./arithmetization.md), [Circuit](./circuit.md).*

## PLONK Arithmetization
The PLONK arithmetization was first proposed in the PLONK paper [[GWC19]](https://eprint.iacr.org/2019/953) as a means to arithmetize circuits where each gate has 2 inputs and 1 output. Each gate is expressed using a "gate equation"; the wiring is represented as permutations.

**(Gate Equation).** A single gate with inputs $a, b$ and output $c$ is defined by the equation:
$$
(q_L)a + (q_R)b + (q_O)c + (q_M)ab + (q_C) = 0
$$
The $q$ values are known as "**selectors**" and allow to specialize each gate into enforcing a specific operation. The table below provides some examples:

| Gate Type | Selector Values | Simplified Gate Equation |
| --------- | --------------- | ------------------------ |
| Addition  | $q_L = 1$, $q_R = 1$, $q_O = -1$, $q_M = 0$, $q_C = 0$ | $a + b -c = 0$ |
|Multiplication| $q_L = 0$, $q_R = 0$, $q_O = -1$, $q_M = 1$, $q_C = 0$ | $ab -c = 0$|
|Public Input is $x$| $q_L = 1$, $q_R = q_O = q_M = 0$, $q_C = -x$ | $a -x = 0$ |

**(Copy Constraints).** Gates are "connected" using copy constraints. Consider two gates for which we want to enforce that the output of the first gate is the left input to the second gate. Let's label our wires: left input, right input and output of the first gate will be $1, 2, 3$, while left input, right input and output of the second gate will be $4, 5, 6$. To enforce that the value on wire $3$ is the same as the value on wire $4$, we show that these values are interchangeable; i.e. that they can be **permuted** without affecting the validity of the gate equations.

A full PLONK circuit is defined by the matrix of all selector values and the copy permutations.

## PLONKish: Variants and Extensions
The PLONK blueprint (gate equation & copy constraints) is extremely versatile and expressive, and has been declined into many variants. The term **PLONKish** was [coined by Daira Hopwood](https://twitter.com/feministPLT/status/1413815927704014850) to describe such variants. 

Additional features include:
- **custom gates** - we can add custom functions to the gate equation. To do so we create a new selector $q_G$ and multiply it by some function $g$ of the wire values $a, b, c$. The new gate equation becomes: $(q_L)a + (q_R)b + (q_O)c + (q_M)ab + (q_C) + (q_G)g(a, b, c) = 0$.
- **larger fan-in and fan-out** - the PLONK arithmetization can be extended to support more than 2 inputs and 1 output for each gate.
- **lookup tables** - the gate equation can also be extended to allow checking that some input value is a member of a table of values.

Some commonly used names for these variants:
- [**TurboPLONK**](https://docs.zkproof.org/pages/standards/accepted-workshop3/proposal-turbo_plonk.pdf) $\rightarrow$ PLONK arithmetization + custom gates + larger fan-in/fan-out
- **PlonkUp** [[PFMBM22]](https://eprint.iacr.org/2022/086) $\rightarrow$ PLONK arithmetization + lookup tables using plookup.
- **UltraPLONK** $\rightarrow$ PLONK arithmetization + custom gates + larger fan-in/fan-out + lookup tables using plookup.
- **halo2 arithmetization** [[Zcash]](https://zcash.github.io/halo2/concepts/arithmetization.html) $\rightarrow$ PLONK arithmetization + custom gates + larger fan-in/fan-out + lookup tables using the Halo2 lookup argument.

> **Additional Resources.** In this [ZKSummit talk](https://youtu.be/ty-LZf0YCK0), Zac Williamson, co-author of PLONK, covers the PLONK arithmetization as well as its TurboPLONK extension. The [halo2 documentation](https://zcash.github.io/halo2/concepts/arithmetization.html) also provides a thorough explanation of the PLONKish arithmetization used in halo2.

> **Circuits vs Machine Computation.** While the PLONK arithmetization was originally designed to capture arithmetic circuits, its PLONKish extensions are now general enough that they also capture machine computations.

## References
[[GWC19]](https://eprint.iacr.org/2019/953) Gabizon, Ariel, Zachary J. Williamson, and Oana Ciobotaru. "PLONK: Permutations over Lagrange-bases for Oecumenical Non-interactive arguments of Knowledge." Cryptology ePrint Archive (2019).

[[PFMBM22]](https://eprint.iacr.org/2022/086) Pearson, Luke, Joshua Fitzgerald, Héctor Masip, Marta Bellés-Muñoz, and Jose Luis Muñoz-Tapia. "Plonkup: Reconciling plonk with plookup." Cryptology ePrint Archive (2022).

[[Zcash]](https://zcash.github.io/halo2/concepts/arithmetization.html) Zcash. "The halo2 Book".