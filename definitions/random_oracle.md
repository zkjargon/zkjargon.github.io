(def:random_oracle)=
# Random Oracle Model (ROM)
> An approximation of the real world in which the output of a cryptographic hash function for an input $x$ is a unique and fixed *random* value.
---

The random oracle model is **a tool** that we use to write security proofs for our cryptographic constructions - it is a representation of the world in which we claim that random oracles exist. A *random oracle* is a black box to which we *ask queries* (send values) and receive a *response*: a value chosen at random. The random oracle’s responses are

- consistent: if I give it a query that it has already seen, the random oracle will give me the same response it gave previously.
- unpredictable: the responses follow a uniform distribution over the oracle’s output domain (this could be integers, strings of 10 characters, points on a curve, *etc*...).
- unrelated to the query: nothing about a random oracle’s response gives me information about the query.

```{note}
When working in the random oracle model, we will often claim that cryptographic hash functions (SHA256, Keccak/SHA3, Poseidon) behave like random oracles. Does this claim always hold? This [ZKHack puzzle](https://www.zkhack.dev/puzzle1.html) explores the question. Spoilers: this sometimes fails if we are not careful.
```