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

## Witness Encryption in Practice
**Witness encryption schemes are not yet practical**.
Cryptographers are hard at work to make these schemes usable.

However, we do have variants that are already available:
- **commitment-based witness encryption (CWE).** In CWE, the public key is an instance $x$ and a commitment $\mathsf{com}$. The corresponding private key is a value $w$ such that $\mathsf{com}$ was a commitment to $w$ and $w$ was a valid witness for $x$. 
    > **CWE example.** Following our circuit example: the public key would be the public inputs *and* a commitment to the private inputs + intermediate steps.
- **signature-based witness encryption (SWE).** In SWE, the public key is a signature key $\mathsf{pk}$ and a string `s`. The corresponding private key is a signature on `s` by the secret key $\mathsf{sk}$ that corresponds to $\mathsf{pk}$.
    > **SWE example.** SWE has been used to build *timelock encryption*, otherwise known as "encrypting to the future" [[DHMW22]](https://eprint.iacr.org/2022/433) [[GMR23]](https://eprint.iacr.org/2023/189).