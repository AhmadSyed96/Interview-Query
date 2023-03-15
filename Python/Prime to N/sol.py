def prime_numbers(N):
    lst = []
    for i in range(2,N+1):
        flag=False
        for j in range(2, i):
            if (i % j) == 0:
                # if factor is found, set flag to True
                flag = True
                # break out of loop
                break

        # check if flag is True
        if not flag:
            lst.append(i)
    return lst