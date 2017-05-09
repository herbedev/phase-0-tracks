class Game
  attr_accessor :secret_word, :secret_word_letters, :guess_limit, :guess_counter
  
  # initialize method
  def initialize(secret_word)
    @word = secret_word
  	@secret_word = []
    @word_letters = []
 	  @guess_limit = 0
 	  @guess_counter = 0
 	  p "initializing game instance"
  end
  
  # split_secret_word method that splits user input into an array of letters
  def split_secret_word(secret_word)
    @word_letters = secret_word.split("")
    return @word_letters
  end
  
  # encrypt_secret_word method that creates a new array with the exact amount of letters contained in the word
  def encrypt_secret_word
    @word.length.times do
      @secret_word.push("_")
    end
    # @secret_word = @secret_word.join(" ")
    return @secret_word
  end
  
  # set guess limit
  def set_guess_limit
    @guess_limit = @word.length * 2 
  end
  
  #method for guessing letters from secret word
  def guess_letter(letter)
    if @word_letters.include?(letter)
      @word_letters.each_index.select { |x| @word_letters[x] == letter}.each do |index|
          @secret_word[index].replace(letter)
      end
    end
  end
  
  #method for replacing letters
  def replace_letter(letter)
    if @word_letters == @secret_word
      return "You hav won"
    elsif !@word_letters.include?(letter)
      p "Sorry no match heres the word  #{@secret_word}"
    elsif @word_letters.include?(letter)
        puts "Here's your updated word! #{@secret_word.join}"
    end
  end
  
end

#initialize new instance of game
game1 = Game.new("baseball")
# test if split_secret_word method works
p game1.split_secret_word("baseball")
# test if encrypt_secret_word method works
p game1.encrypt_secret_word
# test if set_guess_limit works
p game1.set_guess_limit
 p game1.guess_letter("b")
 p game1.replace_letter("b")
 


