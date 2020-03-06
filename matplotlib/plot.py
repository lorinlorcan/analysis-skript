#!/usr/bin/env python3

import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D


def plot_example(filename):

    def f(x, y):
        return x ** 2 + y ** 2 + 10

    axis_limit = 10
    steps = 1

    X = np.arange(-axis_limit, axis_limit, steps)
    Y = np.arange(-axis_limit, axis_limit, steps)
    X, Y = np.meshgrid(X, Y)

    ax = Axes3D(plt.figure(figsize=(3, 3)))
    ticks = [i for i in range(-axis_limit, axis_limit + 1, axis_limit // 2)]
    ax.set_xticks(ticks)
    ax.set_yticks(ticks)
    ax.set_zlim(0, 100)
    ax.contour(X, Y, f(X, Y), levels=25)
    ax.plot_surface(X, Y, f(X, Y), rstride=1, cstride=1, alpha=0.2)
    ax.view_init(elev=2, azim=45)
    plt.savefig(filename + ".pgf")


plot_example('kapitel/funktion_mit_mehreren_variablen/beispiel_3d_funktion')
