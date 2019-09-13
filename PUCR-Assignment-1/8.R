#Isabella Fischer


weight_p = c(0.125, 0.137, 0.098)
converter = 2.205

weight_kg = (weight_p/converter)
weight_kg = round(weight_kg,3)
print(paste(weight_kg[1], "kg"))
print(paste(weight_kg[2], "kg"))
print(paste(weight_kg[3], "kg"))
