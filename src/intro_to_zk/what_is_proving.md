# Introduction to ZK

## What does it mean to *prove*?

### Decision Problems

In mathematics, a statement is either *true* or *false*.
But deciding whether a statement is true or false is not always easy.
Consider for example the following statements:
- **Statement 1**: the number $55$ is even.
- **Statement 2**: the number $25890323$ is not prime.
<!-- 5669 x 4567 = 25890323 -->

We can quickly check that Statement 1 is false, but what about Statement 2?

It turns out that the best way we know to decide Statement 2 is just to try factoring $25890323$: if we succeed, the statement is true. On the other hand, showing it is false requires trying all the possible factorisations and failing (!).

What if we are given additional information? Let's say we were magically handed (or by luck stumbled upon) the numbers $5669$ and $4567$.
We can try to multiply them together and find that indeed $5569 \times 4567 = 25890323$.
We can now decide Statement 2!

Notice that with the additional information, we only needed to perform one multiplication; much less work than trying out all the factorisations.
In a way, this additional information was in fact a **proof** that Statement 2 is true.

**Answer #1 (informal): proving means giving enough auxiliary information about a statement to help establish that it is true.**

### Relations and Languages

The discussion above is formalised by the idea of relations and languages:
- A **relation** $\mathcal{R}$ is a set of ordered pairs $(x, w)$.
The first item, $x$, is called the *instance*; the second, $w$, is called the *witness*.

> **Example: factors.** 
> One such relation is the "factors" relations, $\mathcal{R}_\text{factors}$.
> An instance of this relation is an integer; a witness is a list of integers such that multiplying all the integers in the list equals the instance.
> We can now recast Statement 2 in terms of $\mathcal{R}_\text{factors}$:
> - **Statement 2** (with jargon): does there exist a witness $w$ such that $(25890323, w)$ is in $\mathcal{R}_\text{factors}$?
> 
> As we saw above, finding such a witness ourselves is a lot of work.
> However, given a candidate witness, we can quickly check that the instance $25890323$ does have a witness.

Rather than always having to say "the instance $x_1$ has a witness $w_1$ such that $(x_1, w_1) \in \mathcal{R}$", we use the shorter form "the instance $x_1$ is **satisfiable**". We can also collect all of them in a set:
- the **language** defined by a relation $\mathcal{R}$ is the set of all satisfiable instances for $\mathcal{R}$.

> **More examples.**
> As an exercise, try to cast Sudokus as a relation and identify the instance, witness and language.

**Answer #2 (same as before, in jargon): proving means giving evidence that an instance is indeed in the language defined by some relation $\mathcal{R}$.**

### Proof Systems

So far we have only considered the trivial proof system: sending the witness.

In some cases, this will not be desirable.
Sometimes the witness is private and should remain so.
Other times, the witness is just too big to be sent or for the verifier to download.
These cases motivate the need for more elaborate proof systems.
We discuss these systems more formally in the next article.