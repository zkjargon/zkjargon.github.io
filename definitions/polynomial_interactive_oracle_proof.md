(def:piop)=
# Polynomial Interactive Oracle Proof (PIOP)

> An interactive proof system in which the prover computes polynomials and the verifier can query these polynomials at evaluation points of her choice.

---

Polynomial Interactive Oracle Proofs (PIOP, polyIOP or polynomial IOP) emerged from the development of SNARKs and were later formally defined in the DARK paper {cite}`cryptoeprint:2019:1229`. These are interactive oracle proofs where the prover must produce oracles for polynomials with a given degree bound.

The following figure is taken from *zk-SNARKs: A Gentle Introduction* {cite}`Nitulescu2020zkSNARKsAG`[^1] and illustrates the prover-verifier interaction in a PIOP:

```{image} ../images/nitulescu-piop.png

```

```{note}
This notion is equivalent to an [algebraic holographic proof](def:ahp).
```

## References
```{bibliography}
:filter: docname in docnames
```

[^1]: A great read for the technically-versed and curious reader trying to get a global overview of SNARKs in 2021/2022.
