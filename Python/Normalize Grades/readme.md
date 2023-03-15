Given a list of tuples featuring names and grades on a test, write a function  `normalize_grades`  to normalize the values of the grades to a linear scale between  `0`  and  `1`.

**Example:**

**Input:**

```
grades = [
    ('Jason', 94),
    ('Tessa', 80),
    ('Carla', 38),
    ('Matt', 43),
    ('Jessica', 100)
]
```

**Output:**
```
def normalize_grades(grades) - > [
    ('Jason', 0.9),
    ('Tessa', 0.68),
    ('Carla', 0.0),
    ('Matt', 0.08),
    ('Jessica', 1.0)
]
```
