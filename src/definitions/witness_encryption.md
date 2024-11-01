# Witness Encryption

> An encryption scheme where public keys are instances (public inputs of a circuits) and private keys are witnesses (the private inputs and intermediate computation steps).

---

Witness encryption is a generalization of public key encryption.

Recall that for public key encryption, we pick one specific hard problem to generate private-public key pairs.
For example, if we choose the discrete logarithm in [elliptic curves](./elliptic_curve.md) (EC), the private key is a scalar $s$ and the public key is a point $P = sG$.
We assume that finding $s$ given $P$ is hard and use this fact to construct encryption schemes.

In witness encryption, we allow to encrypt to any $\mathsf{NP}$-problem (see [Decision Problems](../intro_to_zk/what_is_proving.md#decision-problems)).
For example, we could **encrypt to an [arithmetic circuit](./circuit.md)** --- the same ones we use for SNARKs (!).
The **public key would be the public inputs**, while the **private key is the private inputs and all intermediate computation steps**.

More formally, the public key is any [instance](./instance.md) of an $\mathsf{NP}$ relation, and the private key is a corresponding [witness](./witness.md).
Note that depending on the relation, a single public key (instance) could have multiple private keys (witnesses).
Depending on your use case this could be a nasty bug or a great feature!

Here is a table summarizing the above discussion:
| Scheme                         | Hard Problem              | Public Key     | Private Key                           |
| ------------------------------ | ------------------------- | -------------- | ------------------------------------- |
| EC public key encryption       | EC discrete logarithm     | Point $P = sG$ | Scalar $s$                            |
| Circuit-based encryption       | Circuit satisfiability    | public inputs  | private inputs and intermediate wires |
| Generic **witness encryption** | any $\mathsf{NP}$-problem | instance $x$   | witness $w$                           |