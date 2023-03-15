import numpy as np
def normalize_grades(grades):
    names=[]
    scores=[]
    for name, score in grades:
        names.append(name)
        scores.append(score)
    scores = np.array(scores)
    norm_scores = (scores-np.min(scores))/(np.max(scores)-np.min(scores))
    return zip(names, norm_scores)