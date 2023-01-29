# Soundness
> *Of a proof system*. A proof system is said to be *sound* if the verifier rejects an invalid proof with high probability.
---

*Soundness* is a property of a proof system best understood as: "a malicious Prover should not be able to convince the Verifier of an invalid statement". By convention we say that a proof system is sound if an honest verifier will reject an invalid proof with probability greater than $\frac{2}{3}$. Or similarly to our [completeness](def:completeness) definition, if we denote $V'$ the random variable that represents the Verifier's output given an **invalid** proof, we can write the soundness property as:

$$
\text{Pr}\left[ V' = 1 \right] \leq \delta_s
$$

where $\delta_s$ is known as the *soundness error* and $\delta_s \leq \frac{1}{3}$. Note that the number $\frac{1}{3}$ was arbitrarily chosen by convention [[Tha22]](https://people.cs.georgetown.edu/jthaler/ProofsArgsAndZK.html).

> **Statistical vs Computational Soundness.**
> The notion of soundness described above is known as *statistical soundness* or *information-theoretic soundness*. It considers all possible adversaries, including those with unlimited resources. In most real-world applications, we are only concerned with *bounded adversaries*: we usually limit ourselves to adversaries running probabilistic polynomial-time algorithms. This adversarial model is formalised by the notion of an argument (rather than a proof, see our discussion [here](./snark.md#proof-vs-argument)) and that of *computational soundness*.
>
> Computational soundness is defined in the same was as information-theoretic soundness but is only required to hold against probabilistic polynomial-time adversaries.



## References
[[Tha22]](https://people.cs.georgetown.edu/jthaler/ProofsArgsAndZK.html) Justin Thaler. Proofs, Arguments, and Zero-knowledge (Draft). 2022. [https://people.cs.georgetown.edu/jthaler/ProofsArgsAndZK.html](https://people.cs.georgetown.edu/jthaler/ProofsArgsAndZK.html)