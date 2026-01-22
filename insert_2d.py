import numpy as np

arr = np.array([[1,2,3],[4,5,6]])
arr_2 = np.insert(arr , 1 , [6,2,3], axis=0)

print(arr_2)