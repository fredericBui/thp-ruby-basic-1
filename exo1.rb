puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
nb_iteration = gets.chomp.to_i
hastags = ""
for n in 1..nb_iteration
    hastags += "#"
    puts hastags
end