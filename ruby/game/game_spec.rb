require_relative 'game'

describe Game do
  let(:game) { Game.new("baseball") }

  it "makes sure the amount of blank spaces equal to the amount of letters in the word" do
    expect(game.split_secret_word("baseball")).to contain_exactly("b", "a", "s", "e", "b", "a", "l", "l")
  end

  # it "subtracts two integers" do
  #   expect(calculator.subtract(7,1)).to eq 6
  # end

  # it "multiplies two integers" do
  #   expect(calculator.multiply(2,3)).to eq 6
  # end

  # it "divides two integers" do
  #   expect(calculator.divide(10,2)).to eq 5
  # end
end
