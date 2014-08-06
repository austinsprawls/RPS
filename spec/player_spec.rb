require 'rspec'
require_relative '../lib/rps.rb'

describe 'RPS::Player' do
  let(:player) {RPS::Player.new(id: 1, username: 'danielcox', email: 'draycox@gmail.com' )}

  describe 'initialize' do
    it 'initializes an id' do
      expect(player.id).to eq 1
    end

    it 'initializes a username' do
      expect(player.username).to eq 'danielcox'
    end

    it 'initializes an email' do
      expect(player.email).to eq 'draycox@gmail.com'
    end
  end
end