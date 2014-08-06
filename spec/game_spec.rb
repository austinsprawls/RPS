require 'rspec'
require_relative '../lib/rps.rb'

describe 'RPS::Game' do
  let(:game) {RPS::Game.new(id: 1, player1_id: 2, player2_id: 3, winner: nil  )}

  describe 'initialize' do
    it 'initializes an id' do
      expect(game.id).to eq 1
    end

    it 'initializes a player1_id' do
      expect(game.player1_id).to eq 2
    end

    it 'initializes a player2_id' do
      expect(game.player2_id).to eq 3
    end

    it 'initializes a winner' do
      expect(game.winner).to eq nil
    end

  end
end