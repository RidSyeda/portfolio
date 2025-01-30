def displayscatter(value1, value2, color,fontsize,rotation ):
    import pandas as pd 
    import numpy as np 
    import matplotlib.pyplot as plt 
    plt.scatter (x=value1, y=value2, color=color) 
    plt.xticks (fontsize=fontsize, rotation=rotation)
    plt.show()
    
def displayline(value1, value2, color, linestyle):
    import pandas as pd 
    import numpy as np 
    import matplotlib.pyplot as plt 
    plt.plot(value1, value2, color=color, linestyle=linestyle)
    plt.show()
             
def displaybar (value1, value2, color,width):
    import pandas as pd 
    import numpy as np 
    import matplotlib.pyplot as plt 
    plt.bar (value1,value2, color=color,width=width)
    plt.show()
    
def displaypie(value1, value2):
    import matplotlib.pyplot as plt
    plt.pie(value2, labels=value1)
    plt.show()
             
        
             