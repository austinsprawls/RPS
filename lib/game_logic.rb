module RPS
  module GameLogic

  def self.game_over?
  end

  def self.start_game
  end

  def self.restart_game
  end

  def self.game_winner
  end

  def self.winning_move(move1, move2,player1_id,player2_id)
    return 'tie' if move1 == move2
    (move1 == 'rock' && move2 == 'paper') || (move1 == 'scissors' && move2 == 'rock') ||
    (move1 == 'paper' && move2 == 'scissors') ? player2_id : player1_id
  end

  end

end