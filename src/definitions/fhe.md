# Fully Homomorphic Encryption (FHE)

> An encryption scheme is said to be *fully homomorphic* if it allows to compute additions and multiplications on ciphertexts.

---

Regular encryption allows one party (the sender) to hide a message such that there is only one party (the receiver) that can unhide it.

Fully homomorphic encryption (FHE) adds the possibility of computing an arbitrary function $F$ on the ciphertext before it gets decrypted.
The decryption will yield $F(\texttt{message})$.

[![](../images/fhe.png)](../images/fhe.png)

This process allows to outsource computation to an untrusted party without revealing the input data.
Note however that FHE alone gives no insurance as to what function $F$ was run.

# Practicality

FHE is regarded as the holy grail of encryption and for a long time was thought to be impossible.
Today we are starting to see practical FHE schemes.
Note however that they are orders of magnitude slower than symmetric encryption, and non-FHE asymmetric schemes.