# Introduction to ZK Jargon

---

## Interactive and Probabilistically Checkable Proofs

In the [previous article](./what_is_proving.md), we covered what "proving" means, established some necessary vocabulary and finally discusses the trivial proof system: sending the witness.
As discussed, this is not always desirable.
Sometimes the witness is private and should remain so.
Other times, the witness is just too big to be sent or for the verifier to process.

In this article, we look at the main techniques we use to build more elaborate proof systems.
Both of these techniques come from the same incredible fact

### Interactive proofs

![Interactive proof](../images/interactive_proof.png)

### Probabilistically checkable proofs

![Probabilistic proof](../images/pcp.png)

### Combining both

![Interactive oracle proof](../images/iop.png)