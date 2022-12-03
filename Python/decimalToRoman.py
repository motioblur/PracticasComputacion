
n = input("Dame un número: ")[::-1]

fullvalues = ["M","C","X","m","c","x","i"]
halfvalues = ["D","L","V","d","l","v"]
output = []

for i, value in enumerate(n):
    full = int(value) % 5 * fullvalues[-(i+1)]
    half = int(value) // 5 * halfvalues[-(i+1)]
    output.append(half + full)

output = "".join(output[::-1])

print(output)
