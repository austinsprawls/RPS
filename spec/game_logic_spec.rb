require 'rspec'
require_relative '../lib/rps.rb'

describe 'RPS::GameLogic' do
  describe '.winning_move' do

    let(:player1_id){1}
    let(:player2_id){2}

    it 'there is a tie when moves are the same' do
      expect(RPS::GameLogic.winning_move("rock","rock",player1_id,player2_id)).to eq 'tie'
    end

    it 'returns the winning_move' do
      expect(RPS::GameLogic.winning_move("rock","paper",player1_id,player2_id)).to eq 2
      expect(RPS::GameLogic.winning_move("paper","scissors",player1_id,player2_id)).to eq 2
      expect(RPS::GameLogic.winning_move("rock","scissors",player1_id,player2_id)).to eq 1

    end


  end
end


 
