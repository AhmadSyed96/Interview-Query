import numpy as np
def random_key(weights):
    total = sum(weights.values())
    choices = list(weights.keys())
    probs = np.array(list(weights.values())) / total
    return np.random.choice(a=choices, p=probs)