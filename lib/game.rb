module RPS
  class Game
    attr_reader :id, :player1_id, :player2_id, :winner

    def initialize(args)
      @id = args[:id]
      @player1_id = args[:player1_id]
      @player2_id = args[:player2_id]
      @winner = args[:winner]
    end
  end
end