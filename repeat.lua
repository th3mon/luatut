message = 'Enter your guess: '
win = 'You win!!!'

repeat
  io.write(message)
  guess = io.read()
until tonumber(guess) == 15

io.write(win)
