import numpy as np
import matplotlib.pyplot as plt

# OPEN FILE STREAM
lines = []
with open('01_min.log') as f:
    lines = f.readlines()

# PROCESS FILE
count=0
energies=[]
NSTEP=[]
for line in lines:
    count +=1
    if line.split() != [] and line.split()[0] == 'NSTEP':
        #print(line.split())
        #print(lines[count].split()[0],lines[count].split()[1])
        energies.append(float(lines[count].split()[1]))
        NSTEP.append(int(lines[count].split()[0])) 

plt.plot(NSTEP,energies)
plt.savefig('01_min.png')
plt.show()
