def rectangle_overlap(a, b):
    xa = []
    ya = []
    for x , y in a:
        xa.append(x)
        ya.append(y)

    xb = []
    yb = []
    for x , y in b:
        xb.append(x)
        yb.append(y)



    maxxa = max(xa)
    minxa = min(xa)
    maxya = max(ya)
    minya = min(ya)

    maxxb = max(xb)
    minxb = min(xb)
    maxyb = max(yb)
    minyb = min(yb)

    flag = False
    if ((minxb <= maxxa and minxb >= minxa) or (maxxb <= maxxa and maxxb >= minxa)) and ((minyb <= maxya and minyb >= minya) or (maxyb <= maxya and maxyb >= minya)):
        flag = True
    return flag