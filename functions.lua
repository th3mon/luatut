function getSum( number1, number2 )
  return number1 + number2
end

print(string.format('5 + 2 = %d', getSum(5, 2)))

function splitString( theString )
  stringTable = {}

  local i = 1

  for word in string.gmatch(theString, '[^%s]+') do
    stringTable[i] = word
    i = i + 1
  end

  return stringTable, i
end

wordsTable, numberOfWords = splitString("Teenage Mutant Heroes, The Turtles")

for j = 1, numberOfWords do
  print(string.format('%d : %s', j, wordsTable[j]))
end

print('\nBetter!!!\n')
for index, word in pairs(wordsTable) do
  print(string.format('%d : %s', index, word))
end

function getSomeMore( ... )
  local sum = 0

  for key, value in pairs{...} do
    sum = sum + value
  end

  return sum
end

io.write("Sum ", getSomeMore(1, 2, 3, 4, 5), '\n')
io.write("Sum ", getSomeMore(1, 2, 3, 4, 5, 6, 7, 8, 9), '\n')

print('\nStore functions in variables as JS do it and closures\n')

doubleIt = function ( x )
  return x * 2
end

print(doubleIt(5))

function outerFunc()
  local i = 0

  return function ()
    i = i + 1

    return i
  end
end

getI = outerFunc()

print(getI())
print(getI())

myCoroutine = coroutine.create(function ()
  for i = 1, 10 do
    print(i)
    print(coroutine.status(myCoroutine))

    if (i == 5) then
      coroutine.yield()
    end
  end
end)

print(coroutine.status(myCoroutine))

coroutine.resume(myCoroutine)
print(coroutine.status(myCoroutine))

mySecondCoroutine = coroutine.create(function ()
  for i = 101, 110, 1 do
    print(i)
  end
end)

coroutine.resume(mySecondCoroutine)
coroutine.resume(myCoroutine)

print(coroutine.status(myCoroutine))
