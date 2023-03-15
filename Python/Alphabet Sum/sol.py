def sum_alphabet(words):
    tots = []
    for word in words:
        tot = 0
        for letter in word:
            tot += ord(letter)-96
        tots.append(tot)
    return tots