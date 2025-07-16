def signup

    puts "veuillez définir votre mot de passe"
    mdp = gets.chomp
    return mdp

end

def login(mdp)

    puts "Quel est votre mot de passe ?"
    loginpass = gets.chomp


    while loginpass != mdp
        puts "mauvais mot de passe"
        loginpass = gets.chomp
    end

    if loginpass == mdp
        welcome_screen
    end

end



def welcome_screen

    system "clear"
    puts "Welcome to secret space."

end


######################################

def perform

    mdp = signup
    login(mdp)
    
end

######################################

perform