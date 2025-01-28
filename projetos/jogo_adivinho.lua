math.randomseed(os.time())
numero_secreto = math.random(1, 100)

print("Tente adivinhar o número entre 1 e 100:")

tentativas = 0
encontrou = false

while not encontrou do
    print("Digite o seu palpite:")
    palpite = tonumber(io.read())
    tentativas = tentativas + 1
    
    if palpite < numero_secreto then
        print("O número é maior!")
    elseif palpite > numero_secreto then
        print("O número é menor!")
    else
        encontrou = true
        print("Parabéns! Você acertou em " .. tentativas .. " tentativas.")
    end
end

print("-"*70)