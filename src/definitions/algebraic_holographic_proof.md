# Algebraic Holographic Proof (AHP)

> An algebraic holographic proof is a interactive proof where the prover sends oracles which are low degree polynomials and can be split into two categories: those that can be processed before the prover-verifier interactions and those that cannot. *Closely related to [polynomial IOP](./polynomial_interactive_oracle_proof.md).*

---

Algebraic Holographic Proofs are first defined in the Marlin paper [[CHMMVW20]](https://ia.cr/2019/1047) as a means to separate the information theoretic aspects of SNARKs from the cryptographic aspects. It is an interactive oracle proof with extra properties:
- *algebraic*: an honest prover only produces oracles for low degree polynomials (just like in [polynomial IOPs](./polynomial_interactive_oracle_proof.md))
- *holographic*: the verifier does not need to see the proof’s input (e.g. a circuit) but instead has oracle access to an encoding of it.

We use AHPs, [polynomial commitment schemes](./polynomial_commitment.md) and the [Fiat-Shamir heuristic](./fiat_shamir.md) to construct **pre-processing SNARKs** such as Marlin and Plonk.

>**AHP or Polynomial IOP?**
>Algrebraic holographic proofs and polynomial interactive oracle proofs are almost equivalent notions. They were developed concurrently in 2019 by separate research groups: the former by the group behind Marlin [[CHMMVW20]](https://ia.cr/2019/1047) and the latter by the group behind DARK [[BFS20]](https://ia.cr/2019/1229). While they formalise very similar proof systems, polynomial IOPs are more general in that they do not require *holography* (as defined above).

## References
[[BFS20]](https://ia.cr/2019/1229) Bünz, Benedikt, Ben Fisch, and Alan Szepieniec. "Transparent SNARKs from DARK compilers." In Advances in Cryptology–EUROCRYPT 2020: 39th Annual International Conference on the Theory and Applications of Cryptographic Techniques, Zagreb, Croatia, May 10–14, 2020, Proceedings, Part I 39, pp. 677-706. Springer International Publishing, 2020.  

[[CHMMVW20]](https://ia.cr/2019/1047) Chiesa, Alessandro, Yuncong Hu, Mary Maller, Pratyush Mishra, Noah Vesely, and Nicholas Ward. "Marlin: Preprocessing zkSNARKs with universal and updatable SRS." In Advances in Cryptology–EUROCRYPT 2020: 39th Annual International Conference on the Theory and Applications of Cryptographic Techniques, Zagreb, Croatia, May 10–14, 2020, Proceedings, Part I 39, pp. 738-768. Springer International Publishing, 2020.