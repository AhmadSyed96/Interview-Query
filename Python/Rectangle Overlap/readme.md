
You are given two rectangles  `a`  and  `b`  each defined by four ordered pairs denoting their corners on the  `x`,  `y`  plane. Write a function  `rectangle_overlap`  to determine whether or not they overlap. Return  `True`  if so, and  `False`  otherwise.

_Note: If the two rectangles border one another, or share a corner like two diagonally adjacent positions on a chessboard, they are said to overlap._

_Note: The lists of ordered pairs are in no particular order. The first entry in list  `a`  could be the top left corner while the first in list  `b`  is the bottom right._

**Example:**

**Input:**

```
a = [(-3,5), (-3,2),(0,5),(0,2)]
b = [(-1,4), (3,4), (3,1), (-1,1)]
```

**Output:**

```
def rectangle_overlap(a, b) -> True
```

As point  `(0,2)`  is fully contained in rectangle  `b`  and point  `(-1,4)`  is fully contained in a rectangle  `a`.
