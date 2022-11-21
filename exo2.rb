puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
nb_iteration = gets.chomp.to_i
nb_space = 0 # Nombre d'espace avant les hashtags
nb_hashtag = 0
hastags = ""

for i in 1..nb_iteration
    nb_space = (nb_iteration-i)
    nb_hashtag = i
    nb_space.times { hastags += " "}
    nb_hashtag.times { hastags += "#"}
    puts hastags
    hastags = ""
end