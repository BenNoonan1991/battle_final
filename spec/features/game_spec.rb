require 'Game'

describe Game do

  subject(:game) { described_class.new}
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  #let(:receive_damage) { double :receive_damage }


  describe "#attack" do
    it "damages the player" do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
