import numpy as np

arr = np.array([1,2,np.nan,4,np.nan])

print(np.isnan(arr))

print(np.nan == np.nan)