--[[

Different ways work with files
r: Read only
w: Overwire or create a new file
a: Append or create a new file
r+: Read & write existing file
w+: Overwire, read or create a file
a+: Append, read or create file

]]

file = io.open('test.lua', 'w+')

file:write('Random String of text\n')
file:write('Some more text\n')

file:seek('set', 0)

print(file:read('*a'))

file:close()
