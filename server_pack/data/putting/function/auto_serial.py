import os

path = 'F:/commands in server/pack'
target = [x[:-11] for x in os.listdir(path) if x.startswith("place_redstone_block_for")]

file = 'auto_put.mcfunction'
with open(file, 'w') as f:
	for i in target:
		f.write(f'execute at @s positioned ~ ~ ~{target.index(i)*2} run function putting:{i}\n')
	f.close()