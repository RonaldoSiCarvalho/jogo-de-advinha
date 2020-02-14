
numero_secreto= 121
index = 0
while index < 3 do
    puts "Entre com um palpite:"
    palpite= gets.chomp.to_i
    puts"Você acertou?"
    puts palpite == numero_secreto
    index = index + 1
end



