
def da_boas_vindas
    puts "Bem-vindo ao jogo da adivinhacao"
    puts "Qual e o seu nome?"
    nome = gets
    puts "\n\n\n\n"
    puts "Comecaremos o jogo para voce, #{nome}"

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

def sorteia_numero_secreto
    puts "Escolhendo um numero secreto entre 0 e 200..."
    numero_secreto = 121 
    puts "Escolhido... que tal adivinhar hoje o nosso numero secreto?"
    numero_secreto
end
def pede_um_numero(tentativa, limite_de_tentativas)
    puts "\n\n\n"
    puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
    puts "Entre com o numero"
    chute = gets
    puts "Sera que acertou? Voce chutou #{chute}"
    chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
acertou = numero_secreto == chute 
if acertou
    puts "Acertou!"
    return true
else
    maior = numero_secreto > chute 
    if maior 
        puts "O numero secreto e maior!"
    else
        puts "O numero secreto e menor!"
    end
    false
    end
end 
def joga(limite_de_tentativas)
    numero_secreto = sorteia_numero_secreto
    (1..limite_de_tentativas).each do |tentativa|
        chute = pede_um_numero tentativa, limite_de_tentativas
        break if verifica_se_acertou numero_secreto, chute 
    end
end 
def nao_quer_jogar? 
    puts "Deseja jogar novamente? (S/N)"
    quero_jogar = gets.strip.upcase
    quero_jogar.casecmp('N').zero?
end
da_boas_vindas
limite_de_tentativas = 3
loop do
    joga limite_de_tentativas
    break if nao_quer_jogar?
end
