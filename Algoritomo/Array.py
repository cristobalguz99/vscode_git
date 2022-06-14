from re import M
import numpy as np

a=[1,2,3]
b=[4,5,6]
f=[a,b]
m=np.array(f)
print(m)
print(m.sum())
print(m.ndim)
print(m.shape)

c=np.array([[10,20,30],[40,50,60]])

e=np.concatenate([m,c],axis=1)
print(e)
