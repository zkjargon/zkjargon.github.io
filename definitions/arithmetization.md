(def:arithmetization)=
# Arithmetization

> *Ambiguous*. The process of turning a generic statement or question into a set of equations to be verified or solved - also refers to the output of that process.
> 

Arithmetization is the process of turning a generic statement or question into a set of equation to be verified or solved. Consider the following statement: “I am twice older than my youngest sibling”. Can we write this mathematically? Let’s write $a_1, a_2, \dots, a_n$ the ages of the siblings and $x$ the age of the claimant. We can now rewrite the statement as: $x = 2*min(a_1, a_2, \dots, a_n)$

To verify the original statement for Alice (8) and her siblings Bob (9) and Charlie (4), we can just plug in the values to our equation. We evaluate each side and determine whether the equation holds: if it holds the statement was true, if it does not the statement was false. Simple as that!

A “good” arithmetization is one in which the final mathematical expressions can be evaluated with minimal effort (computation). While our example was trivial, the process of arithmetization becomes more complex for abstract statements such as: “I have correctly shuffled a deck of cards” or “I know a secret value $x$ such that running a public program $P$ with $x$ as input will output the public value $y$”.