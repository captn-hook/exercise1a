#main.rb
#player class
class Player
    attr_accessor :name, :score

    def initialize(name)
        @name = name
        @score = 0
    end

    def set_score(score)
        @score = score
    end
end

def player_factory(name)
    p = Player.new(name)
    p.set_score(rand(10..300))  
    return p
end

player_array = []

for i in 1..50
    player_array.push(player_factory("Player #{i}"))
end

player_array.each do |player|
    puts "Ready #{player.name}! Score: #{player.score}"
end