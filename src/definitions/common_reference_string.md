# Common Reference String
> The collection of all public parameters required to run a protocol - usually in the context of [SNARKs](./snark.md) and [polynomial commitment schemes](./polynomial_commitment.md).
---

In [polynomial commitment schemes](./polynomial_commitment.md) and [SNARKs](./snark.md) - like may other cryptographic protocols - different parties need to agree on some common parameters. These often include what kind of mathematical objects they will be manipulating (integers, points on an elliptic curve, lattices, etc...), a prime number, a generator of a cyclic group. Once a *setup* has been run to determine all the necessary parameters, they are collected into a *string* and are published for future reference. This collection (string) is what we call a **common reference string**.

>**Trusted Setups.** 
>In some cases the common parameters are constructed using information that needs to remain secret for the protocol to be secure. In this case we refer to the setup as a [Trusted Setup](./trusted_setup.md) and the string of parameters as a [Structured Reference String](./structured_reference_string.md).
