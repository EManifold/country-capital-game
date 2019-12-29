require 'question'

describe Question do
  describe '#generate' do
    it "should generate a random country/capital pair" do
      expect(subject.generate).to include 'Afghanistan'
      expect(subject.generate).to include 'Kabul'
    end
  end
end
