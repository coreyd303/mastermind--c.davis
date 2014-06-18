
guess = 'rgbythf'

def letters
  guess_chars = guess.char
  letters = guess_chars.reject{|char| if char != ["r","g","b","y"]}
  puts letters
end
