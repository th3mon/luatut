myTable = {}

for i = 1, 10 do
  myTable[i] = i
end

io.write('First: ', myTable[1], '\n')
io.write('Number of Items: ', #myTable, '\n')

for key, value in pairs(myTable) do
  -- io.write(value .. ' [' .. key .. ']', '\n')
end

table.insert(myTable, 1, 0)
io.write('First (new value): ', myTable[1], '\n')
print(table.concat(myTable, ', '))

table.remove(myTable, 1)
print(table.concat(myTable, ', '))

for key, value in pairs(myTable) do
  -- io.write(value .. ' [' .. key .. ']', '\n')
end

myTable = {}
for i = 0, 10, 2 do
  myTable[i] = i
end

io.write('First: ', myTable[0], '\n')

if myTable[1] == nil then
  -- io.write('There is no item with index 1', '\n')
end

io.write('Second: ', myTable[2], '\n')
