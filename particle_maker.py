import math

with open("result.txt","w") as f:
	for l in range(-90,90):
		m = 2*math.pi/360*l
		for i in range(0,359,5):
			j = 2*math.pi/360*i
			f.write(f"particle end_rod ~ ~ ~ {math.cos(j)*math.cos(m)} {math.sin(m)} {math.sin(j)*math.cos(m)} 0.4 0\n")