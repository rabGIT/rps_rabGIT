
module RpsRabGIT
  class RpsGame
    def initialize
      @play_options = ['R', 'P', 'S']
      @win_combos = ['RS', 'SP', 'PR']
      @player_choice = ''
      @comp_choice = ''
    end

    def play
      @comp_choice = @play_options.sample()
      prompt until valid_move?
      return 'Tie!' if @player_choice == @comp_choice
      return "Your #{@player_choice} beat computer's #{@comp_choice}" if win?
      "Computer's #{@comp_choice} beat your #{@player_choice}!"
    end

    private

    def valid_move?
      return false unless @play_options.include?(@player_choice)
      true
    end

    def prompt
      puts('Enter your choice (R/P/S): ')
      @player_choice = gets.strip.upcase
    end

    def win?
      @win_combos.include?(@player_choice + @comp_choice)
    end
  end
end
