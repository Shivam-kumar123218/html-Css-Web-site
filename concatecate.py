import numpy as np

arr = np.array([10,20,30])
arr_1 = np.array([40,50,60])

arr_2 = np.concatenate((arr , arr_1))

print(arr_2)

arr_4 = np.array([1,2,3,4,5,6])
arr_5 = np.array([5,6,7,8,9,4])

arr_6 = np.concatenate((arr_4 , arr_5))

print(arr_6)