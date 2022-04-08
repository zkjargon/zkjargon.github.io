(def:piop)=
# Polynomial Interactive Oracle Proof (PIOP)

> An interactive proof system in which the prover computes polynomials and the verifier can query these polynomials at evaluation points of her choice.

---

Polynomial Interactive Oracle Proofs (PIOP, polyIOP or polynomial IOP) emerged from the development of SNARKs and were eventually formally defined in the [DARK paper](https://eprint.iacr.org/2019/1229.pdf) (2019). These are interactive oracle proofs where the prover must produce oracles for polynomials with a given degree bound.

```{figure} ../images/nitulescu-piop.png
---
name: directive-fig
---
Diagram from A. Nitiulescu, *zk-SNARKs: A Gentle Introduction,* [PDF available online](https://www.di.ens.fr/~nitulesc/files/Survey-SNARKs.pdf). Highly recommend reading for the technically inclined that are beginning in the zk space
```

This notion is equivalent to an [algebraic holographic proof](def:ahp).
