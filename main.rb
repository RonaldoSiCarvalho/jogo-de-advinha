palpite = 0
numero_secreto = 121
3.times do
    if palpite != numero_secreto
        
    puts "Entre com um palpite:"
    palpite= gets.chomp.to_i
    puts"Você acertou?"
    puts palpite == numero_secreto
    end
    
end



