# Introduction to ZK Jargon

---

## Part 1: What does it mean to *prove*?

This article aims to be a gentle introduction to the notions of **decision problems**, **relations**, **languages** and the **$\mathsf{NP}$ complexity class**.
We follow a running example and rephrase it each time we cover a new term. 

### Decision Problems

In mathematics, a statement is either `TRUE` or `FALSE`.
However, deciding whether a statement is true or false is not always easy.
Consider for example the following statements:
- **Statement 1**: the number $54$ is even.
- **Statement 2**: the number $25890323$ can be factored.
<!-- 5669 x 4567 = 25890323 -->

We can quickly check that Statement 1 is `TRUE`, but what about Statement 2?
To our knowledge, the best way to decide Statement 2 is just to try factoring $25890323$. 
If we succeed, the statement is `TRUE`, but we might be trying for a long time, with no guarantee of ever succeeding!

What if we are given additional information?
Let's say we were magically handed (or by luck stumbled upon) the numbers $5669$ and $4567$.
We can try to multiply them together and find that indeed $5669 \times 4567 = 25890323$.
We can now decide Statement 2 ✅.

Notice that with the additional information, we only needed to perform one multiplication; much less work than trying out all the potential factorizations.
In a way, this additional information was in fact a **proof** that Statement 2 is `TRUE`.

**Answer #1 (informal): proving means giving auxiliary information about a statement to decide that it is true.**

We can also rephrase this answer in the form of a condition: a provable statement is one that can be easily decided *provided the right information*.
In [complexity theory](https://en.wikipedia.org/wiki/Computational_complexity_theory), this corresponds to the [class $\mathsf{NP}$](https://en.wikipedia.org/wiki/NP_(complexity)).

### Relations

The discussion above is formalised by the notions of relations and languages:
- A **relation** $\mathcal{R}$ is a set of ordered pairs $(x, w)$.
When talking about $\mathsf{NP}$ relations (provable statements) we refer to the first item, $x$, as an **instance**, and the second, $w$, as a **witness**.

> **Example: factors.** 
> Let's define a relation that we will call $\mathcal{R}_\text{factors}$.
> An instance of this relation is an integer, and a witness is an unordered list of integers greater than 1.
> We will say that the pair $(x, w)$ is in $\mathcal{R}_\text{factors}$ if and only if $w$ contains more than one element and the product of all the elements in $w$ is equal to $x$.
>
> For example, the instance $6$ has the witness $[2, 3]$.
> The instance $16$ has multiple witnesses: including $[4, 4]$, $[2, 8]$ and $[2, 2, 4]$. 
> 
> We can now recast Statement 2 in terms of $\mathcal{R}_\text{factors}$:
> - **Statement 2** (with jargon, part 1): there exist a witness $w$ such that $(25890323, w)$ is in $\mathcal{R}_\text{factors}$.
> 
> As we saw above, finding such a witness ourselves is a lot of work.
> However, given the candidate witness $[5669, 4567]$, we can quickly check that the pair $(25890323, [5669, 4567])$ is in $\mathcal{R}_\text{factors}$.

### Languages

Rather than always having to say "the instance $x_1$ has a witness $w_1$ such that $(x_1, w_1) \in \mathcal{R}$", we use the shorter form "the instance $x_1$ is **satisfiable**".
Note that the relation which $x_1$ satisfies isn't explicitly stated and must be made clear from the context.

We can collect all the satisfiable instances of a relation in a set:
- the **language** defined by a relation $\mathcal{R}$ is the set of all satisfiable instances for $\mathcal{R}$. 
We often write $\mathcal{L}(\mathcal{R})$ or $\mathcal{L}_\mathcal{R}$.

> **Example: factors.**
> As we have seen, $6$ and $16$ are in $\mathcal{L}(\mathcal{R}_\text{factors})$.
> On the other hand, prime numbers such as $5$ or $7$ cannot be expressed as a product of integers.
> Therefore, they are not in $\mathcal{L}(\mathcal{R}_\text{factors})$.
>
> Once again we can rephrase Statement 2 in terms of the language defined by $\mathcal{R}_\text{factors}$:
> - **Statement 2** (with jargon, part 2): $25890323$ is in $\mathcal{L}(\mathcal{R}_\text{factors})$.

**Answer #2 (same as before, in jargon): proving means giving evidence that an instance is indeed in the language defined by some relation $\mathcal{R}$.**

**More examples.**
As an exercise, try to cast a Sudoku as a relation and identify the instance, witness and language.
What about the relation $\mathcal{R}_f$, defined for some function $f$ as all pairs $(x, w)$ such that $x = f(w)$?
What happens when we pick $f$ to be *(i)* a polynomial or *(ii)* a hash function?

---

## Up next: probabilistic and interactive proofs

So far we have only considered the trivial proof system: sending the witness.

In some cases, this is not desirable.
Sometimes the witness is private and should remain so.
Other times, the witness is just too big to be sent or for the verifier to process.
These cases motivate the need for more elaborate (and powerful) proof systems.
We discuss these systems more formally in the next article.