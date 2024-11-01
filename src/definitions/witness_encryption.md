# Witness Encryption

> An encryption scheme where public keys are instances (public inputs of a circuits) and private keys are witnesses (the private inputs and intermediate computation steps).

---

Witness encryption is a generalization of public key encryption.

In public key encryption, we pick one specific hard problem to generate private-public key pairs.
For example, if we choose the discrete logarithm in [elliptic curves](./elliptic_curve.md), the private key is a scalar $x$ and the public key is a point $Y = xG$.

In witness encryption, we allow to encrypt to any $\mathsf{NP}$-relation (see [Decision Problems](../intro_to_zk/what_is_proving.md#decision-problems)).
For example, we could **encrypt to an [arithmetic circuit](./circuit.md)** --- the same ones we use for SNARKs (!).
The **public key would be the public inputs**, while the **private key is the private inputs and all intermediate computation steps**.

More formally, the public key is any [instance](./instance.md) of an $\mathsf{NP}$ relation, and the private key is a corresponding [witness](./witness.md).
Note that depending on the relation, a single public key (instance) could have multiple private keys (witnesses).
Depending on your use case this could be a nasty bug or a great feature!