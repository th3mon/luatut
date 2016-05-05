i = 1
message = ''

while (i <= 10) do
  message = message .. tostring(i) .. '\n'
  i = i + 1

  if (i == 8) then
    break
  end

end

io.write(message)
