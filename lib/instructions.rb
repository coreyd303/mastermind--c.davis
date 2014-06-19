class Instructions

  attr_reader :instructions

  def initialize
    @instructions = instructions
  end

  def instructions
    red = "(r)ed".red.bold
    blue = "(b)lue".blue.bold
    yellow = "(y)ellow".yellow.bold
    green = "(g)reen".light_green.bold
    history = "history".white.bold
    quit = "(q)uit".magenta.bold
    r = "r".red.bold
    g = "g".light_green.bold
    b = "b".blue.bold
    y = "y".yellow.bold
    rgby = "rgby".white.bold
    puts "

    *********************************************************************************
    MASTERMIND is a game of simple cunning and skill. I will generate a secret
    sequence of colors represented by a combination of #{red}, #{green}, #{blue},
    #{yellow}. Your goal mortal is to guess that correct combination of colors
    using the characters #{r},#{g},#{b},#{y}. Your guess should be given as a string of
    letters like #{rgby}. If you are correct (which you will NEVER be) then you win.
    If you are not, I may give you another chance to guess. IF you would like to see
    a list of your guesses at any time during the game, type \"#{history}\" If at any
    point your feeble mortal mind becomes too weak you may quit the game and slink off
    into your mortal peril by entering the command #{quit}. Continue if you dare!!!
    **********************************************************************************

    "
  end
end
