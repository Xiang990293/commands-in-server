import math

for i in range(359):
	j = 2*math.pi/360*i
	print(f"particle end_rod ~ ~ ~ {math.cos(j)} 0 {math.sin(j)} 0.4 0")