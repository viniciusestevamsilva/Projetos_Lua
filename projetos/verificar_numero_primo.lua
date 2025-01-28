print("-"*70)
print("Digite um número:")

num = tonumber(io.read())
primo = true

for i = 2, num - 1 do
    if num % i == 0 then
        primo = false
        break
    end
end

if primo and num > 1 then
    print(num .. " é primo.")
else
    print(num .. " não é primo.")
end

print("-"*70)