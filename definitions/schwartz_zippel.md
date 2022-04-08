# Schwartz-Zippel Lemma
> A little mathematical theorem that allows us to assert with high probability whether two polynomials are identical by evaluating both at the same randomly chosen input; this is very efficient!
---

*(Warning! Math: polynomials, probabilities. In the spirit of this “jargon decoder”, we do not look at the lemma directly but instead give informal intuition for why it is useful in ZK arguments)*

The **Schwartz-Zippel lemma is a central component to many arguments of knowledge** because it allows us to efficiently check whether two polynomials are identical.

Consider two straight lines (degree 1 polynomials, $ax+b$): these are either identical or intersect at most once. Similarly, two parabolas (degree 2 polynomials, $ax^2+bx+c$) are either identical or will intersect at most twice. Degree 3 polynomial will have at most 3 intersections, etc... The Schwartz-Zippel lemma can be used to show that this pattern is true for polynomials of any degree $d$: their evaluations will only be equal to each other for at most $d$ inputs.

With that in mind, should we evaluate two polynomials of degree at most $d$ at a single point in some evaluation domain $S$ and find that they agree we know that we are in one of two cases:

- case 1: our polynomials are identical, all their coefficients are the same.
- case 2: our polynomials are different and we are at one of the $d$ points where they agree. If our evaluation point was chosen at random in $S$, the probability of finding ourselves in this case is $\frac{\text{\# of points where polynomials agree}}{\text{\# of points we could have chosen from}}  = \frac{d}{|S|}$ (notation: $|S|$ denotes the *order* of $S$, i.e. the number of values in the set $S$). For a sufficiently large $S$ compared to $d$, this probability will approach 0.

since case 2 is extremely unlikely we can assert with high probability that the two polynomials were identical.

**Formalities - only for those who want them**: the lemma itself does not compare polynomials but instead is interested in the probability that a polynomial evaluates to 0. Notice that a non-zero polynomial of degree $d$ has at most $d$ roots (if it had more roots, it would be of higher degree!). Therefore let $p$ be a non-zero polynomial of degree $d$, $S$ be the evaluation domain of $p$, and $r$ an element of $S$ chosen uniformly at random, we can write:

$$
\text{Pr}\left[p(r) = 0 \right] \leq \frac{d}{|S|}
$$

When $d << |S|$, this probability is negligible. Therefore if for a value $r$ uniformly chosen at random we find that $q(r)=0$, it is overwhelmingly likely that $q$ is the zero polynomial. To check whether two polynomials $f$ and $g$ are identical, we can check whether the polynomial $h(x) = f(x) -g(x)$ is the zero polynomial.