(def:ahp)=
# Algebraic Holographic Proof (AHP)

> An algebraic holographic proof is a interactive proof where the prover sends oracles which are low degree polynomials and can be split into two categories: those that can be processed before the prover-verifier interactions and those that cannot. *Equivalent to [polynomial IOP](def:piop).*

---

Algebraic Holographic Proofs are first defined in the Marlin paper {cite}`cryptoeprint:2019:1047` as a means to separate the information theoretic aspects of SNARKs from the cryptographic aspects. It is an interactive oracle proof with extra properties:
- *algebraic*: an honest prover only produces oracles for low degree polynomials (just like in [polynomial IOPs](def:piop))
- *holographic*: the verifier does not need to see the proof’s input (e.g. a circuit) but instead has oracle access to an encoding of it.

We use AHPs, [polynomial commitment schemes](def:polycommit) and the [Fiat-Shamir heuristic](def:fiat_shamir) to construct **pre-processing SNARKs** such as Marlin and Plonk.

```{note}
**AHP or Polynomial IOP?** Algrebraic holographic proofs and polynomial interactive oracle proofs are in essence equivalent notions. They were developed concurrently in 2019 by two groups of researchers: the former by the group behind Marlin {cite}`cryptoeprint:2019:1047` and the latter by the group behind DARK {cite}`cryptoeprint:2019:1229`.
```

## References
```{bibliography}
:filter: docname in docnames
```