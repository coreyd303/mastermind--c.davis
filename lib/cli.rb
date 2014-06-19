class CLI
  attr_reader :command, :secret

  def initialize
    @command = ''
    sequence = SequenceGenerator.new(4, %w[r g b y]).generate
    @secret  = sequence.secret
  end

  def start
    puts "Welcome Mortal to: MASTERMIND"
    puts 'Would you like to (p)lay, read (i)nstructions, or (q)uit and run for your life?'
    command = gets.chomp.downcase
    case command
    when 'p'
      guess_receiver
    when 'i'
      instructions
    when 'q'
      puts "Farewell worthless mortal!"
    end
  end

  def instructions
    puts "
    *********************************************************************************
    MASTERMIND is a game of simple cunning and skill. I will generate a secret
    sequence of colors represented by a combination of (r)ed, (g)reen, (b)lue,
    (y)ellow. Your goal mortal is to guess that correct combination of colors
    using the characters r,g,b,y. Your guess should be given as a string of letters
    like rgby. If you are correct (which you will NEVER be) then you win. If you
    are not, I may give you another chance to guess. If at any point your feeble
    mortal mind becomes too weak you may quit the game and slink off into your mortal
    peril by entering the command (q)uit. Continue if you dare!!!
    **********************************************************************************"

    puts 'Would you like to (p)lay or (q)uit and run for your life?'
    command = gets.chomp.downcase
    case command
    when 'p'
      guess_receiver
    when 'q'
      puts "Farewell worthless mortal!"
    end
  end

  def guess_receiver
    print "What is your guess pitiful mortal?:"
    user_guess = ''
      until user_guess == "q"
        user_guess = gets.chomp
        valid_guess = GuessValidator.new(user_guess)
        if valid_guess.valid?
          execute_game(user_guess)
        else
          puts "YOUR GUESS IS NOT VALID MORTAL! Guesses must be in the format: rgby"
        end
      end
    puts "Farewell worthless mortal!"
  end

  def execute_game(user_guess)
    matcher = SequenceMatcher.new(secret, user_guess)
    print @secret
    puts ''
    if matcher.match?
      puts "YOU'VE WON THIS TIME MORTAL! NEXT TIME YOU WILL NOT BE SO LUCKY!"
    else
      match_count    = matcher.match_count
      match_position = matcher.match_position
      puts "You have #{match_count} matches in #{match_position} correct positions..."
    end
  end
end
