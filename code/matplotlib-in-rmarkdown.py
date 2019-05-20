# https://blog.csdn.net/u010758410/article/details/71743225
import numpy as np
import matplotlib.pyplot as plt
plt.switch_backend('agg') # Very Important in R Markdown with Rocker
plt.rcParams['font.sans-serif']=['SimHei'] #用来正常显示中文标签
plt.rcParams['axes.unicode_minus']=False #用来正常显示负号
color = 'cornflowerblue'
points = np.ones(5)  # Draw 5 points for each line
text_style = dict(horizontalalignment='right', verticalalignment='center',
                  fontsize=12, fontdict={'family': 'monospace'})
def format_axes(ax):
    ax.margins(0.2)
    ax.set_axis_off()
# 所有支持的线类型
fig, ax = plt.subplots()

linestyles = ['-', '--', '-.', ':']
for y, linestyle in enumerate(linestyles):
    ax.text(-0.1, y, repr(linestyle), **text_style)
    ax.plot(y * points, linestyle=linestyle, color=color, linewidth=3)
    format_axes(ax)
    ax.set_title(u'线的类型')
plt.show()

# 另一个例子
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
plt.switch_backend('agg') # Very Important in R Markdown with Rocker/VBox

# np.random.seed(1234)
x1 = np.arange(0,6.6,0.1)
x2 = np.linspace(0,100,len(x1))
y = 10 + x1*np.cos(np.pi* x1) - 0.1*x2

plt.clf()
sns.scatterplot(x1,y)
plt.show()
