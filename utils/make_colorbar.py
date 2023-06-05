# Static plot of colorbar
import numpy as np
import matplotlib as mpl
from matplotlib.colors import LinearSegmentedColormap

mpl.rcParams['font.sans-serif'] = "Arial"

cm_data = np.loadtxt("./bamako.txt")[::-1]
bamako_map = LinearSegmentedColormap.from_list("bamako", cm_data, N=10)

plt.rcParams.update({'font.size': 5})
fig = plt.figure(figsize=(2.5,0.6))
ax = fig.add_axes([0.05, 0.65, 0.9, 0.2])

cb = mpl.colorbar.ColorbarBase(ax, orientation='horizontal', 
                               cmap=bamako_map,
                               norm=mpl.colors.Normalize(0, 100),  # vmax and vmin
                               extend='neither',
                               label='Fraction of total variance (%)',
                               ticks=[0, 20, 40, 60, 80, 100])
    
plt.savefig('.//data/figs/colorbar.png', dpi=200)