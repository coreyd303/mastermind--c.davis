#require 'colorize'

class CLI
  attr_reader :command, :secret, :sequence
  attr_accessor :turns

  def initialize
    Wizard.new
  end

  def start
    @command = ''
    @sequence = SequenceGenerator.new(4, %w[r g b y]).generate
    @secret  = sequence.secret
    @turns = TurnCounter.new
    puts "Welcome Mortal...".white.on_red.blink
    execute_command
  end

  def instructions
    Instructions.new
    execute_command
  end

  def execute_command
    puts 'Would you like to (p)lay, read (i)nstructions, or (q)uit and run for your life?'.red
    command = gets.chomp.downcase
    case command
      when 'p'
        guess_receiver
      when 'i'
        instructions
      when 'q'
        puts "Farewell worthless mortal!".red
    end
  end

  def guess_receiver
    print "What is your guess pitiful mortal?:".red
    user_guess = ''
      until user_guess == 'q'
        user_guess = gets.chomp
        if user_guess == 'history'
            puts "#{turns.guess_history.join(', ')}"
        else
          valid_guess = GuessValidator.new(user_guess)
            if valid_guess.valid?
              execute_game(user_guess)
            else
              puts "YOUR GUESS IS NOT VALID MORTAL! Guesses must be in the format: rgby".red
        end
      end
    end
  end

  def execute_game(user_guess)
    turns.add_guess(user_guess)
    matcher = SequenceMatcher.new(secret, user_guess)
    print @secret
    puts ''
    if matcher.match?
      play_again
    else
      match_count    = matcher.match_count
      match_position = matcher.match_position
      puts "You have #{match_count} correct letters, #{match_position} of them in the correct position...".red
    end
  end

  def play_again
    puts "YOU'VE WON THIS TIME MORTAL! NEXT TIME YOU WILL NOT BE SO LUCKY!".blue.bold
    puts "It only took you a mere #{turns.guess_history.count} trys...".blue.bold
    puts 'Would you like to play again (y)es... (n)o'.red
    input = gets.chomp
      if input == 'y'
        @sequence = SequenceGenerator.new(4, %w[r g b y]).generate
        @secret  = sequence.secret
        @turns = TurnCounter.new
        guess_receiver
      else
        abort("I'll get you next time mortal! NEXT TIME!!!".red)
    end
  end
end
