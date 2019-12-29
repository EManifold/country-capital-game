require 'question'

describe Question do
  describe '#generate' do
    it "should generate a random country/capital pair" do
      srand(2)
      question = subject.generate
      expect(question).to include 'Oman'
      expect(question).to include 'Muscat'
    end
  end
end
