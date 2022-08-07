module SnakesAndLadders
  class Player
    attr_reader :position, :name, :logger

    def initialize(name, logger)
      @name = name
      @position = 1
      @logger = logger
    end

    def move_by(spaces)
      logger.call("🎲 Player #{name} rolled #{spaces}! Moves from #{position} to #{position + spaces}.")
      @position += spaces
    end

    def move_to(new_position)
      @position = new_position
    end
  end

  class Game
    def initialize(snakes: default_snakes,
                   ladders: default_ladders,
                   player_count: default_player_count,
                   board_size: 100,
                   dice: -> { rand(2..12) },
                   logger: -> (message) { puts message })
      @snakes = snakes
      @ladders = ladders
      @players = (1..player_count).map { |n| Player.new(n, logger) }
      @dice = dice
      @logger = logger
      @board_size = board_size
    end

    def play
      tick = 0
      players.cycle do |player|
        roll(player)
        check_snakes(player)
        check_ladders(player)
        break if check_winner(player, tick += 1)
      end
    end

    private

    attr_reader :snakes, :ladders, :dice, :logger, :board_size, :players

    def roll(player)
      player.move_by(dice.call)
    end

    def check_snakes(player)
      if snakes.keys.include?(player.position)
        logger.call("🐍 Player #{player.name} hit a snake! Moves from #{player.position} to #{snakes[player.position]}.")
        player.move_to(snakes[player.position])
      end
    end

    def check_ladders(player)
      if ladders.keys.include?(player.position)
        logger.call("🪜 Player #{player.name} hit a ladder! Moves from #{player.position} to #{ladders[player.position]}.")
        player.move_to(ladders[player.position])
      end
    end

    def check_winner(player, tick)
      if player.position >= board_size
        logger.call("🏆 Player #{player.name} wins after #{tick} rounds!")
        true
      end
    end

    def default_player_count
      4
    end

    def default_snakes
      {
        97 => 78,
        88 => 24,
        63 => 18,
        36 => 6,
        32 => 10
      }
    end

    def default_ladders
      {
        3 => 38,
        11 => 24,
        21 => 42,
        50 => 67,
        71 => 92
      }
    end
  end
end

if __FILE__ == $0
  # SnakesAndLadders::Game.new.play && exit
  require "diffy"
  @output = []
  @expected = ["🎲 Player 1 rolled 4! Moves from 1 to 5.", "🎲 Player 2 rolled 4! Moves from 1 to 5.", "🎲 Player 3 rolled 4! Moves from 1 to 5.", "🎲 Player 4 rolled 4! Moves from 1 to 5.", "🎲 Player 1 rolled 4! Moves from 5 to 9.", "🎲 Player 2 rolled 4! Moves from 5 to 9.", "🎲 Player 3 rolled 4! Moves from 5 to 9.", "🎲 Player 4 rolled 4! Moves from 5 to 9.", "🎲 Player 1 rolled 4! Moves from 9 to 13.", "🎲 Player 2 rolled 4! Moves from 9 to 13.", "🎲 Player 3 rolled 4! Moves from 9 to 13.", "🎲 Player 4 rolled 4! Moves from 9 to 13.", "🎲 Player 1 rolled 4! Moves from 13 to 17.", "🎲 Player 2 rolled 4! Moves from 13 to 17.", "🎲 Player 3 rolled 4! Moves from 13 to 17.", "🎲 Player 4 rolled 4! Moves from 13 to 17.", "🎲 Player 1 rolled 4! Moves from 17 to 21.", "\u{1FA9C} Player 1 hit a ladder! Moves from 21 to 42.", "🎲 Player 2 rolled 4! Moves from 17 to 21.", "\u{1FA9C} Player 2 hit a ladder! Moves from 21 to 42.", "🎲 Player 3 rolled 4! Moves from 17 to 21.", "\u{1FA9C} Player 3 hit a ladder! Moves from 21 to 42.", "🎲 Player 4 rolled 4! Moves from 17 to 21.", "\u{1FA9C} Player 4 hit a ladder! Moves from 21 to 42.", "🎲 Player 1 rolled 4! Moves from 42 to 46.", "🎲 Player 2 rolled 4! Moves from 42 to 46.", "🎲 Player 3 rolled 4! Moves from 42 to 46.", "🎲 Player 4 rolled 4! Moves from 42 to 46.", "🎲 Player 1 rolled 4! Moves from 46 to 50.", "\u{1FA9C} Player 1 hit a ladder! Moves from 50 to 67.", "🎲 Player 2 rolled 4! Moves from 46 to 50.", "\u{1FA9C} Player 2 hit a ladder! Moves from 50 to 67.", "🎲 Player 3 rolled 4! Moves from 46 to 50.", "\u{1FA9C} Player 3 hit a ladder! Moves from 50 to 67.", "🎲 Player 4 rolled 4! Moves from 46 to 50.", "\u{1FA9C} Player 4 hit a ladder! Moves from 50 to 67.", "🎲 Player 1 rolled 4! Moves from 67 to 71.", "\u{1FA9C} Player 1 hit a ladder! Moves from 71 to 92.", "🎲 Player 2 rolled 4! Moves from 67 to 71.", "\u{1FA9C} Player 2 hit a ladder! Moves from 71 to 92.", "🎲 Player 3 rolled 4! Moves from 67 to 71.", "\u{1FA9C} Player 3 hit a ladder! Moves from 71 to 92.", "🎲 Player 4 rolled 4! Moves from 67 to 71.", "\u{1FA9C} Player 4 hit a ladder! Moves from 71 to 92.", "🎲 Player 1 rolled 4! Moves from 92 to 96.", "🎲 Player 2 rolled 4! Moves from 92 to 96.", "🎲 Player 3 rolled 4! Moves from 92 to 96.", "🎲 Player 4 rolled 4! Moves from 92 to 96.", "🎲 Player 1 rolled 4! Moves from 96 to 100.", "🏆 Player 1 wins after 37 rounds!"]
  SnakesAndLadders::Game.new(dice: -> { 4 }, logger: -> (message) { @output.append(message) }).play
  if @output == @expected
    puts "OK"
  else
    puts "You broke the game"
    puts Diffy::Diff.new(@expected.join("\n") + "\n", @output.join("\n") + "\n")
  end
end
