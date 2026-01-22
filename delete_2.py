import numpy as np

arr = np.array([[1,2,3],[4,5,6]])
print(arr)
arr_1 = np.delete(arr , 0, axis=0)

print(arr_1)