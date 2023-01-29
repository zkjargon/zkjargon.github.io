# Polynomial Interactive Oracle Proof (PIOP)

> An interactive proof system in which the prover computes polynomials and the verifier can query these polynomials at evaluation points of her choice.

---

Polynomial Interactive Oracle Proofs (PIOP, polyIOP or polynomial IOP) emerged from the development of SNARKs and were later formally defined in the DARK paper [[BFS20]](https://ia.cr/2019/1229). These are interactive protocols between a prover and a verifier. With each message the prover produces an oracle and the verifier gets to query any oracles it has received from the prover. In a PIOP, the prover can only produce oracles that evaluate polynomials with degree lower than a given bound.

The following figure is taken from *zk-SNARKs: A Gentle Introduction* [[Nit20]](https://www.di.ens.fr/~nitulesc/files/Survey-SNARKs.pdf) [^1] and illustrates the prover-verifier interaction in a PIOP:

![PIOP protocol diagram from [Nit20]](../images/nitulescu-piop.png)

>**AHP or Polynomial IOP?**
>Algrebraic holographic proofs and polynomial interactive oracle proofs are almost equivalent notions. They were developed concurrently in 2019 by separate research groups: the former by the group behind Marlin [[CHMMVW20]](https://ia.cr/2019/1047) and the latter by the group behind DARK [[BFS20]](https://ia.cr/2019/1229). While they formalise very similar proof systems, polynomial IOPs are more general in that they do not require *holography* (as defined above).

## References
[[BFS20]](https://ia.cr/2019/1229) Bünz, Benedikt, Ben Fisch, and Alan Szepieniec. "Transparent SNARKs from DARK compilers." In Advances in Cryptology–EUROCRYPT 2020: 39th Annual International Conference on the Theory and Applications of Cryptographic Techniques, Zagreb, Croatia, May 10–14, 2020, Proceedings, Part I 39, pp. 677-706. Springer International Publishing, 2020.

[[CHMMVW20]](https://ia.cr/2019/1047) Chiesa, Alessandro, Yuncong Hu, Mary Maller, Pratyush Mishra, Noah Vesely, and Nicholas Ward. "Marlin: Preprocessing zkSNARKs with universal and updatable SRS." In Advances in Cryptology–EUROCRYPT 2020: 39th Annual International Conference on the Theory and Applications of Cryptographic Techniques, Zagreb, Croatia, May 10–14, 2020, Proceedings, Part I 39, pp. 738-768. Springer International Publishing, 2020.

[[Nit20]](https://www.di.ens.fr/~nitulesc/files/Survey-SNARKs.pdf) Anca Nitulescu. zk-SNARKs: a Gentle Introduction. 2020. [https://www.di.ens.fr/~nitulesc/files/Survey-SNARKs.pdf](https://www.di.ens.fr/~nitulesc/files/Survey-SNARKs.pdf).

[^1]: A great read for the technically-versed and curious reader trying to get a global overview of SNARKs in 2021/2022.
