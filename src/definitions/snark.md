# SNARK
> *Acronym: succinct non-interactive argument of knowledge.* An argument system in which a Prover can produce a short, single-message proof attesting that she knows some information that shows the truth of a statement.
---

SNARK is an acronym for Succinct Non-interactive ARgument of Knowledge.
The properties are:
- [**Succinct**](./succinct.md): the protocol has a proof (and/or verifier) that is smaller than the size of the private inputs and intermediate computation steps. See the article on [succinct](./succinct.md) for further discussion.
- **Non-interactive**: the protocol only sends one message from the prover to the verifier. The parties don't even need to be online at the same time!
- [**Argument of Knowledge**](./soundness.md#knowledge-soundness): the protocol is an argument and it upholds the knowledge soundness property. At a high level, this means that any computationally bounded prover that produces a valid proof must have *known* the witness.

Additionally, a SNARK can be **publicly verifiable**.
The prover emits one proof that can then be verified by any third party.

SNARKs are the tool of choice for applications that require creating trust in an asymmetric computation setting.
It allows a powerful but untrusted party (the prover) to convince a less powerful party (the verifier) that it performed some computation correctly.

<!-- ---

See also: [instance](./instance.md), [witness](./witness.md), [common reference string](./common_reference_string.md), [structure reference string](./structured_reference_string.md), [trusted setup](./trusted_setup.md), [preprocessing SNARK](./preprocessing_snark.md) -->