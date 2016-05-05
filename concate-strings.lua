name = 'Przemek'

longString = [[
I am very very long
string that goes on
forever]]

io.write(longString, '\n')

newLongString = longString .. ' ' .. name

io.write(newLongString, '\n')

io.write(longString .. ' ' .. name)
