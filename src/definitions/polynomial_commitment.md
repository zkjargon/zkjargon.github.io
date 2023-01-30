# Polynomial Commitment Scheme

> A two-phase protocol: in the first phase, a *Prover* commits to a polynomial $p$ by emitting a public **commitment**; in the second phase the *Verifier* chooses a value $x$, and the *Prover* produces a value $y$ and convinces the *Verifier* that $y=p(x)$.

## Overview
A polynomial commitment scheme is a two phase protocol: the first phase is known as the **commitment phase**, the second as the **evaluation phase**.

In the commitment phase, a *Prover* generates a commitment to some polynomial $p(X)$. The type of this commitment object varies depending on the polynomial commitment scheme being used (e.g. a single elliptic curve point for KZG commitments or a vector of elliptic points in IPA commitments).

The evaluation phase is often an interactive protocol between the *Prover* and a *Verifier*. The *Verifier* chooses a point $x$ at which it wants to learn the evaluation of $p$. The prover can then produce a value $y$ and an "**opening proof**". Finally, the *Prover* and *Verifier* use the commitment, claimed evaluation $y$ and the opening proof as inputs to a (sometimes interactive) protocol to convince the *Verifier* that $y = p(x)$.

## Properties
We are interested in polynomial commitment schemes that are
- **binding**: a prover cannot produce false opening proofs for a committed polynomial.
- (optionally) **hiding**: the commitment reveals nothing about the polynomial.

> **Some Popular Schemes.**
> KZG (or Kate) commitments, IPA (inner-product argument), FRI (Fast Reed-Solomon Interactive Oracle Proof of Proximity).