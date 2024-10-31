# Zero-knowledge Proof

> A proof that reveals no more information than the validity of the statement it supports.

A proof is said to be "zero-knowledge" if it does not reveal *any* information beyond the fact that a statement is `TRUE`.

Zero-knowledge proofs provide **privacy** for the prover.
Any other proof system is bound to leak at least 1 bit of information, which could have very subtle privacy and security implications.

See [S2M1 of the ZK Whiteboard Sessions](https://zkhack.dev/whiteboard/s2m1/) for an in-depth treatment of how we define zero-knowledge mathematically and prove it.

> **Warning: implementation bugs.** Zero-knowledge is only shown to hold for *honest* provers.
> A malicious or faulty prover (e.g., the implementation has bugs) may produce proofs that leak information about the private input.