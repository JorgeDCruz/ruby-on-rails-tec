#puts "Hello World"

def mi_metodo(input)
    # Ruby regresa el último valor ejecutado en la función
    # Si se desea regresar algo de manera prematura hay que utilizar return 
    "\nHola #{input}"
end

#mi_variable = 1
# CONSTANTE = 5
# name = gets.chomp

# algo = mi_metodo "Jorge"
# puts algo

# Crea un procecimiento anónimo en una variable
full_name = Proc.new{
    |first, last|
    first + " " + last
}


# p full_name["Jorge", "Cruz"]
# p full_name.call("Jorge", "Cruz")


full_name2 = Proc.new do|first, last|
    first + " " + last
end

# puts full_name2.call("Daniel", "Case")

def roster (player1, player2, player3)
    puts player1
    puts player2
    puts player3
end

#splat arguments
def roster2 (*players)
    puts players
end

# roster 'Jorge', 'Esteban', 'David'
# roster2 'Jorge', 'Esteban', 'David'

def pos_method(otro:, algo:)
    puts "\nAlgo #{algo} \nOtro #{otro}"
end

#pos_method otro: 1, algo: "Hola"

# los keyword based splat arguments funcionan como una hash table
def with_kwargs(**kwars)
    puts kwars
end

#with_kwargs nombre: "Jorge", apellido: "Cruz"

arr = [1, 2, 3, 4, 5 ,6, 7, 8, 9]
# arr.each do |i|
#     p i
# end

#arr.each{ |i| p i}
teams = {
    "Houston Astros" => {
        "first base" => "AJ Reed",
        "second base" => "Jose Altuve",
        "short stop" => "Carlos Correa"
    },
    "Texas Rangers" => {
        "first base" => "Prince Fielder",
        "second base" => "R. Odor",
        "short stop" => "Elvis Andrus"
    }
}

# teams.each do |team, players|
#     puts team
#     players.each do |position, player|
#         puts"#{player} starts at #{position}"
#     end
# end

# (1...10).to_a.select do |x|
#     puts "#{x} => #{x.even?}"
#     #puts x.even?
# end

#puts ["1", "23.5", "0", "4"].map {|x| x.to_i}

puts teams.keys
