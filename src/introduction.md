# Overview: proofs, arguments and relations

## What does it mean to *prove*?

**Decision Problems**

In mathematics, a statement is either $\mathsf{True}$ or $\mathsf{False}$.
But deciding whether a statement is $\mathsf{True}$ or $\mathsf{False}$ is not always easy.
Consider for example the following statements:
- **Statement 1**: the number $55$ is even
- **Statement 2**: the number $25890323$ is not prime
<!-- 5669 x 4567 = 25890323 -->

We can quickly check that Statement 1 is $\mathsf{False}$, but what about Statement 2?

It turns out that the best way we know to decide Statement 2 is just to try factoring $25890323$: if we succeed, the statement is $\mathsf{True}$, but showing it is $\mathsf{False}$ requires trying all the possible factorisations and failing (!).

What if we are given additional information? Let's say we were magically handed (or by luck stumbled upon) the numbers $5669$ and $4567$.
We can try to multiply them together and find that indeed $5569 \times 4567 = 25890323$.
We can now decide Statement 2!
Notice that with the additional information, we only needed to perform one multiplication; much less work than trying out all the factorisations.
In a way, this additional information was in fact a *proof* that Statement 2 is $\mathsf{True}$.


