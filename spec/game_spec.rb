require 'game'

describe Game do
  describe '#result' do
    game = Game.new

    it "should add one to the score" do
      game.question(['Oman', 'Muscat'])
      game.answer('Muscat')
      expect{game.result}.to change { game.score }.by(1)
    end

    it "should log one round to the counter" do
      game.question(['Oman', 'Muscat'])
      game.answer('Muscat')
      expect{game.result}.to change { game.rounds }.by(1)
    end
  end

end
