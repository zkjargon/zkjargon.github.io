# Multi-party Computation (MPC)

> A protocol that allows mutually distrusting parties, each holding a secret, to jointly compute a function over their secrets without revealing any information other than the result.

---

As indicated in the name, MPC is a protocol between multiple parties.
These parties each hold some data that they want to keep secret.
They also do no trust each other but, for some reason, want to jointly compute a program together.

An MPC protocol allows these parties to evaluate the function of interest on their joint private inputs without revealing anything other than the result.

> **The canonical example: Yao's millionaire problem.**  
> The example we usually use to illustrate this setting is known as Yao's millionaire problem, named after its inventor Andrew Yao.
> Alice and Bob are two millionaires and want to know who is more rich.
> However they don't want to reveal how much they own to each other, nor to any third party.
>
> The problem can then be extended to allow for more than 2 parties, and any arbitrary program rather than just a comparison of integers.

## Generic vs Task-specific Protocols
MPC protocols can be divided into two groups: those that are task-specific, and those that are generic.
A generic protocol will allow the set of parties to compute any program they like.
However, making the protocol generic prevents it from being optimized for the specific task at hand.
On the other hand, task-specific protocols can take advantage fo this specialization and can be overall faster or cheaper to run.

## Constructing MPC
Generic 2-party MPC (2-PC) protocols can be built following the *garbled circuit* approach laid out by Andrew Yao [[Yao86]]((https://ieeexplore.ieee.org/document/4568207)).
For further reading on garbled circuits, we recommend [*A Gentle Introduction to Yao’s Garbled Circuits*](https://web.mit.edu/sonka89/www/papers/2017ygc.pdf) by Sophia Yakoubov. 

Protocols involving more parties will often use techniques such as [zero-knowledge proof](./zero_knowledge_proof.md) and [fully homomorphic encryption](./fhe.md).