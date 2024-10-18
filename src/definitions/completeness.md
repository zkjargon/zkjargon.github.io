# Completeness
> *Of a proof system*. A proof system is *complete* if, for every `TRUE` statement, the Prover can always produce an accepting proof. 
---

*Completeness* is a property of a proof system best understood as: **"an honest Prover should always be able to convince an honest Verifier of a valid statement"**.

More formally, given a [relation](../intro_to_zk/what_is_proving.md#relations) $\mathcal{R}$ and the associated [language](../intro_to_zk/what_is_proving.md#languages) $\mathcal{L}_\mathcal{R}$, the mathematical expression for completeness looks often like the equation below: 
$$
\forall x \in \mathcal{L}_\mathcal{R}, \; \Pr\left[ \langle P, V \rangle(x) = 1 \right] = 1
$$
where $P$ and $V$ are the honest Prover and Verifier respectively, and $\langle P, V \rangle(x)$ denotes the bit output by $V$ at the end of the interaction with $P$ for the instance $x$.

> **Perfect completeness vs Completeness.**  
> The definition above imposes that the honest prover *always* convince the honest verifier (i.e. the probability is 1). We call this property *perfect completeness*. Sometimes this is not necessary, nor is it achievable. In those cases, we can relax the success probability to be greater than $1 - \delta$, where $\delta$ is something small.