class WrongNumberOfPlayersError < StandardError ; end

class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
        raise WrongNumberOfPlayersError unless game.length == 2
        game.each do |strategy|
                strategy[1] = strategy[1].upcase
                if(strategy[1] != 'R' and strategy[1] != 'P' and strategy[1] !$
                        raise NoSuchStrategyError
                end
        end

        if game[0][1] == 'R' and game[1][1] != 'P'
                return game[0]
        elsif game[0][1] == 'P' and game[1][1] != 'S'
                return game[0]
        elsif game[0][1] == 'S' and game[1][1] != 'R'
                return game[0]
        else
                return game[1]
        end
end

def rps_tournament_winner(tournament)
        if(tournament[0][0].is_a?(String))
                return rps_game_winner(tournament)
        end

        rps_game_winner([rps_tournament_winner(tournament[0]), rps_tournament_$
end

tournament = [
                        [
                                [["Armando", "P"], ["Dave", "S"]],
                                [["Richard", "R"], ["Michael", "S"]],
                        ],
                        [
                                [["Allen", "S"], ["Omer", "P"]],
                                [["David E.", "R"], ["Richard X.", "P"]]
                        ]
                ]

puts rps_tournament_winner(tournament)

puts "Games winners:"
puts rps_game_winner([['Armando', 'P'], ['Dave', 'S']])
puts rps_game_winner([['Richard', 'R'], ['Michael', 'S']])
puts rps_game_winner([['Allen', 'S'], ['Omer', 'P']])
puts rps_game_winner([['David E.', 'R'], ['Richard X.', 'P']])

