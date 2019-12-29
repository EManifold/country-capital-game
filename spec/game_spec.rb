require 'game'

describe Game do
  describe '#result' do
    game = Game.new

    context "the answer was correct" do
      it "should return true if the user has inputted the correct answer" do
        game.question(['Oman', 'Muscat'])
        game.answer(['Oman', 'Muscat'])
        expect(game.result).to eq true
      end

      it "should add one to the score" do
        game.question(['Oman', 'Muscat'])
        game.answer(['Oman', 'Muscat'])
        expect{game.result}.to change { game.score }.by(1)
      end
    end

    it "should log one round to the counter" do
      game.question(['Oman', 'Muscat'])
      game.answer(['Oman', 'Muscat'])
      expect{game.result}.to change { game.rounds }.by(1)
    end
  end
end
