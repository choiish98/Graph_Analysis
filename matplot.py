import matplotlib.pyplot as plt
import numpy as np

print("start")

data = []
file_path = "stream_minor"
with open(file_path, "r") as file:
    for line in file:
        pair = tuple(map(float, line.split()))
        data.append(pair)

print("getting data done")

grouped_data = {}
for key, value in data:
    if value > 200 or value == 0:
        continue
    if key not in grouped_data:
        grouped_data[key] = []
    grouped_data[key].append(value)

print("data processing done")

for i in range(7):
	key_value = 0
	values = grouped_data[key_value]

#	x = np.arange(1, len(values) + 1) 
	x = np.arange(1, len(values) + 1) / len(values) * 100
	y = values

	plt.plot(x, y, marker = 'o')

print("making plot done")
print("now you can see plot chart")

plt.xlabel('timeline')
plt.ylabel('Value')
plt.ylim(0, 30)
plt.title(f'Stream Application Minor Fault')
plt.grid(True)
plt.show()
