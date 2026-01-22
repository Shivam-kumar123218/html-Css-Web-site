import numpy as np

arr = np.array([1,2,3])
arr_1 = np.array([4,5,6])

print(np.vstack((arr,arr_1)))
print(np.hstack((arr,arr_1)))