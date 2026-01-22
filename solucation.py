import numpy as np

arr = np.array([100,200,300,400])
discount = 10

arr_1 = arr - (arr * discount/100)

print(arr_1)

