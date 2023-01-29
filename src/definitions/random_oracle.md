# Random Oracle Model (ROM)
> An approximation of the real world in which the outputs of certain computations (like hashing or signing a message) are seen as truly random.
---

The random oracle model is **a tool** that we use to write security proofs for our cryptographic constructions - it is a representation of the world in which we claim that random oracles exist. A *random oracle* is a black box to which we *ask queries* (send values) and receive a *response*: a value chosen at random. The random oracle’s responses are

- consistent: if I give it a query that it has already seen, the random oracle will give me the same response it gave previously.
- unpredictable: the responses follow a uniform distribution over the oracle’s output domain (this could be integers, strings of 10 characters, points on a curve, *etc*...).
- unrelated to the query: nothing about a random oracle’s response gives me information about the query.

> **Hash Functions as Random Oracles.**
> When implementing protocols that are secure in the ROM, we will often claim that cryptographic hash functions (SHA256, Keccak/SHA3, Poseidon) behave like random oracles. This claim usually holds, however we cannot use *any* hash function. The [first ZKHack puzzle](https://www.zkhack.dev/puzzle1.html) explores the dangers of using a poorly-selected hash.