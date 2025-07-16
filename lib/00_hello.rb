def say_hello(first_name)
    puts "hello #{first_name}"
end

def ask_first
    print "ton prénom : "
    first_name = gets.chomp
    return first_name
end

first_name = ask_first
say_hello(first_name)