import numpy as np
def sample_multinomial(keys, weights):
    tot =  sum(weights)
    probs = []
    for weight in weights:
        probs.append(weight/tot)
    
    return np.random.choice(a=keys, p=probs)