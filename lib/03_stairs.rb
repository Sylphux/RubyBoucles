#affichage graphique du jeu
def jeusystem(height, jet)

    trueheight = 10-height
    system "clear"
    (0..10).each do |i|
        if i == trueheight
            puts "#"*i + "+"
        else
            puts "#"*i    
        end
    end

    puts "\n"
    puts "le résultat du jet est #{jet}"

    return height

end


def calculatar(jet, height)
    if jet == 5 || jet == 6
        height += 1
    end
    if jet == 1
        height -= 1
    end
    if jet == 2 || jet == 3 || jet == 4
        height += 0
    end
    return height
end




def game(height, jet)

    while height < 10
        jeusystem(height, jet)

        puts "Lance ton dé."
        print "appuies sur entrée :"
        gets.chomp
        jet = rand(6)+1

        height = calculatar(jet, height)

        # puts "hauteur actuelle : #{height}"
        # sleep(10)

    end

    jeusystem(height, jet)
    
    if height == 10
        puts "Bravo, tu es arrivé à la fin de l'escalier, le jeu est fini"
    end

end


#######################################
#        Le jeu commence              #
#######################################

height = 0
jet = 0

game(height, jet)



