# Elliptic Curve
> A set of coordinate pairs $(x,y)$ that satisfy the equation $y^2 = x^3 + ax + b $.

*⚠️ Prerequisites: [Finite fields](https://zcash.github.io/halo2/background/fields.html).*

An elliptic curve is defined as the set of all coordinate pairs $(x, y)$ such that:

$$ y^2 = x^3 + ax + b $$

In elliptic curve cryptography, we pick $x$ and $y$ to be elements of a *finite field*. We refer to this field as the **base field**.

We then define a **group operation** which we call "point addition" and usually denote with the '$+$' symbol. Repeated applications of the group operations can be counted like below:

$$
A + A + A = 3A
$$

The number '$3$' above is referred to as a *scalar*. If we are in a cyclic group, then the scalars also define a finite field: we call this field the **scalar field**. 