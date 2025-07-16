
#pyramide triangle
def half_pyr(pyr_heigth)
    (1..pyr_heigth).each do |i|
        i.times do
            print "#"
        end
        puts "\n"
    end
end

#pyramide isocele
def full_pyr(pyr_heigth)
    (1..pyr_heigth).each do |i|
        ligne = " "*(pyr_heigth-i) + "#"*(2*i-1)
        puts ligne
    end
end

#pyramide et pyramide inversée
def wtf_pyr(pyr_heigth)
    #pyr grandit
    (1..pyr_heigth).each do |i|
        ligne = " "*(pyr_heigth-i) + "#"*(2*i-1)
        puts ligne
    end

    #pyr rapetisse
    space = 2
    (2..pyr_heigth).each do |i|
        ligne = " "*(space/2) + "#"*((pyr_heigth*2-1)-space)
        space +=2
        puts ligne
    end
end

#####################################################



#start du programme
print "hauteur de la pyramide : "
pyr_heigth = gets.chomp.to_i

#vérifie si even ou pas
while pyr_heigth.even?
    puts "que des nombres impairs"
    pyr_heigth = gets.chomp.to_i
end

#lance le programme choisi
wtf_pyr(pyr_heigth)