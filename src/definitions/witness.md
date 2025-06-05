# Witness
> *(Of a general purpose [SNARK](./snark.md))*. All the [circuit](./circuit.md) variables that the verifier does not see: the prover's private inputs and all the intermediate values computed in the circuit.

---

In a general purpose [SNARK](./snark.md), we call the **witness** the collection of values that the verifier does not read; either because they are private to the prover, or because they are too long to satisfy the [succinctness](./snark.md#snarks) property.

Consider the following example:  
> Peggy sends a string `string` to Victor and wants to convince him that she knows a secret value `seed` such that applying the `Keccak` hash 1000 times to it produces `string`. That is, `string = Keccak(Keccak(...(Keccak(seed)...)))`.
> 
> Peggy and Victor therefore agree on a SNARK circuit that takes `seed` as a private input and `string` as a public input. The circuit applies Keccak once to `seed` to produce a 1st intermediate value. This value is then fed into Keccak again, producing another intermediate value. This process is repeated 1000 times until a final value is produced. Finally, this last value is compared to `string`.

In this example, Peggy wants to keep the value `seed` secret, so it must certainly be part of the witness. Secondly, notice that the circuit produces 1000 intermediate values. Victor (rightfully so) doesn't care about these values and shouldn't have to read through them! He just wants to see `string` and a short proof that Peggy is saying the truth. So the 1000 intermediate values are also part of the witness.
