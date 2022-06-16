(def:completeness)=
# Completeness
> *(Of a proof system)*. A proof system is said to be *complete* if the verifier accepts a valid proof with high probability. 
---

At the final stage of a proof system, the Verifier outputs whether or not it has accepted the proof. We usually denote accept with a $1$ and reject with a $0$. However, the Verifier may not always be a deterministic algorithm: in some protocols, the Verifier's response might depend on some randomly chosen values.

In practice we are interested in systems for which the Verifier will accept a valid proof. This notion is formalised in the *completeness* property. Let $V$ be the random variable that represents the Verifier's output given a valid proof, we say that a system is complete if the verifier accepts with a probability greater than $\frac{2}{3}$. You will often find completeness expressed as following inequality:

$$
\text{Pr}\left[V = 1 \right] \geq 1 - \delta_c
$$

where $\delta_c$ is known as the *completeness error* and $\delta_c \leq \frac{1}{3}$. See {cite}`ThalerPAZK` for further reading and a discussion of the choice of $\frac{1}{3}$ for the completeness error.

```{admonition} Perfect Completeness
A proof system is said to have perfect completeness if the Verifier always accepts a valid proof, i.e. 

$$
\text{Pr}\left[V = 1 \right] = 1
$$

```

## References
```{bibliography}
:filter: docname in docnames
```