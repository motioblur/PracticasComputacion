
dineros = int(input("Dame tus dineros:"))

moneda = [500,200,100,50,20,10,5,1]
output = []

for i, value in enumerate(moneda):
    billetes = dineros // value
    dineros = dineros - billetes * value
    if billetes > 0:
        quantity = moneda[i]
        type = "billete" if quantity >= 20 else "moneda"
        type += "s" if billetes > 1 else ""
        output.append(f"{billetes} {type} de {quantity}\n")


print("".join(output))
