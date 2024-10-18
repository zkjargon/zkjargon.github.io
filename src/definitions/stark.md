# STARK

> *Overloaded.* The term STARK has been used to mean: 
> 1. the hash-based SNARK of Ben-Sasson *et al.* [[BBHR18]](https://eprint.iacr.org/2018/046),
> 2. any argument of knowledge with a sublinear proof and verifier, a quasilinear prover and a transparent setup, (could be interactive or non-interactive) or
> 3. any hash-based transparent SNARK.

---


![STARK vs SNARK](../images/stark_vs_snark.png)

> **Naming recommendation.** In this book we will use:
> - **"STARK [BBHR18]"** to refer to the transparent SNARK of Ben-Sasson *et al.*, 
> - **"STARK"** to mean "scalable, transparent argument of knowledge"; this could include Nova, Bulletproofs (both transparent SNARKs) and possibly some interactive arguments of knowledge that meet the "scalability" requirement,
> - **"pure ROM SNARKs"**, **"hash-based SNARK"** or **"transparent hash-based SNARK"** to mean SNARKs that use hash functions and no other cryptographic primitive; this includes STARK [BBHR18], Ligero, Binius, PLONK+FRI (Redshift, Plonky2).