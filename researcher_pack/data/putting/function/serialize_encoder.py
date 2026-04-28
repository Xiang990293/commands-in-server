path = 'redstone_Eng.txt'
with open(path, 'r') as f:
	for line in f.readlines():
		output = f'place_redstone_block_for_upper_{line[0].lower()}.mcfunction'
		with open(output, 'w') as m:
			m.write(f'# {line[0]}\n')
			for i in range(64):
				chara = line[i+1]
				if chara == "0": continue
				if chara == "1":
					m.write(f'setblock ~{i+i//8} ~1 ~ observer[facing=up]\n')
	f.close()