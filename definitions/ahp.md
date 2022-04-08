# Algebraic Holographic Proof (AHP)

> An algebraic holographic proof is equivalent to a polynomial IOP where the proving oracles are split into two categories: those that are independent from the instance and witness (e.g. circuit description; can be processed before the prover-verifier interactions) and those that are dependent.

---

Algebraic Holographic Proofs are first defined in the Marlin paper as a means to separate the information theoretic aspects of SNARKs from the cryptographic aspects. It is an interactive oracle proof with extra properties:

*algebraic*: an honest prover only produces oracles for low degree polynomials (just like in polynomial IOPs)

*holographic*: the verifier does not need to see the proof’s input (e.g. a circuit) but instead has oracle access to an encoding of it.
We use AHPs, polynomial commitment schemes and the Fiat-Shamir heuristic to construct pre-processing SNARKs as seen in Marlin and Plonk.

```{note}
**AHP or Polynomial IOP?** Algrebraic holographic proofs and polynomial interactive oracle proofs are in essence equivalent notions. They were developed concurrently in 2019 by two groups of researchers: the former by the group behind Marlin and the latter by the group behind DARK
```