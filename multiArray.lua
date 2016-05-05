myMultiTable = {}

for i = 0, 9 do
  myMultiTable[i] = {}

  for j = 0, 9 do
    myMultiTable[i][j] = tostring(i) .. tostring(j)
  end

end

for i = 0, 9 do
  for j = 0, 9 do
    local message = myMultiTable[i][j]

    if (j < 9) then
      io.write(message .. ' : ')
    else
      io.write(message)
    end

  end

  io.write('\n')
end
