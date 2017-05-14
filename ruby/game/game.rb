class Game
  
  attr_accessor :secret_word, :secret_word_letters, :guess_limit, :guess_counter, :game_over
  
  # initialize method
  def initialize(secret_word)
  @word = secret_word
  @secret_word = []
  @word_letters = secret_word.split("")
 	@guess_limit = @word.length * 2
 	@guess_counter = 0
 	@guessed_letters = []
 	@game_over = false
 	p "initializing game instance"
 	encrypt_secret_word
  end
  
  # # split_secret_word method that splits user input into an array of letters
  # def split_secret_word(secret_word)
  #   @word_letters = secret_word.split("")
  #   return @word_letters
  # end
  
  # encrypt_secret_word method that creates a new array with the exact amount of letters contained in the word
  def encrypt_secret_word
    @word.length.times do
      @secret_word.push("_")
    end
    # @secret_word = @secret_word.join(" ")
    return @secret_word
  end
  
  #method for guessing letters from secret word
  # See if a letter is inside an array , if it is replace the position in another array with that letter. 
  def guess_letter(guessed_letter)
    # if @word_letters.include?(letter)

    	@word_letters.each_with_index do |letter, index|
		  if guessed_letter == letter 
		  	@secret_word[index] = letter
		  end
		end
      
  end
  
  def guess_counter(letter)
  	if !@word.include?(letter) 
  		@guess_counter += 1
  	end
  	@guessed_letters.push(letter)
  end
  #possibly call game over in guess_counter

  
  def game_over
    if @guess_counter >= @guess_limit
      @game_over = true
    elsif @word == @secret_word.join("")
      @game_over = true
    else
      @game_over = false
    end
  end

  def run
  	user_input = ""
  	until game_over || user_input == "done"
  		
	  	p "Please input a letter"
	  	user_input = gets.chomp
	  	guess_letter(user_input)
	  	guess_counter(user_input)
	end 
  end
end
#initialize new instance of game
game1 = Game.new("hi")
#
game1.run


