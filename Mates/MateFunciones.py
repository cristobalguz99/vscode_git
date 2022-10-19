from matplotlib import pyplot

def f(x):
    return 1*x+50

x = range(-10, 10)
pyplot.plot(x, [f(i) for i in x])
pyplot.axhline(0, color="black")
pyplot.axvline(0, color="black")
pyplot.xlim(-1, 100)
pyplot.ylim(-1, 100)
pyplot.savefig("función_lineal.png")
pyplot.show()