import glob;
import numpy as np;
import bloscpack as bp;
import sys

xf = sorted(glob.glob('/ssd/testpartition*.blp'));

output_each_class = 500

zero_class_count = 0
one_class_count = 0

x_data = [] 
y_data = []
dimesion = 0

for x_file in xf:
  if zero_class_count + one_class_count == output_each_class * 2:
     break
  y_file = x_file + ".labels" 
  x = bp.unpack_ndarray_file(x_file)
  y = bp.unpack_ndarray_file(y_file)
  if x.shape[0] != y.shape[0]:
    print("Shapes are not equal")
    sys.exit(1)
  dimension = x.shape[1]  
  for x_i in range(0,x.shape[0]):
     if zero_class_count + one_class_count == output_each_class * 2: 
        break
     x_vector = x[x_i]
     if  x_vector.shape[0] != dimension: 
        print("Dimension mismatch")
        sys.exit(1)
     y_scalar = int(y[x_i])
     if y_scalar == 0:
        if zero_class_count < output_each_class:
          zero_class_count += 1
          x_arrstr = np.char.mod('%f', x_vector)
          output = " ".join(x_arrstr)
          x_data.append(output)
          y_data.append(str(y_scalar))
     elif y_scalar == 1:
        if one_class_count < output_each_class:
           one_class_count += 1
           x_arrstr = np.char.mod('%f', x_vector)
           output = " ".join(x_arrstr)
           x_data.append(output)
           y_data.append(str(y_scalar))
     else:
        print("Invalid y value")
        sys.exit(0)
with open('input'+str(dimension)+"D.txt", 'w') as outfile:
  outfile.write(str(zero_class_count+one_class_count)+" "+str(dimension))
  outfile.write("\n".join(x_data)+"\n")

with open('inputLabels.txt', 'w') as outfile:
  outfile.write("\n".join(y_data)+"\n")
