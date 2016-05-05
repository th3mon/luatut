age = math.random(30)
message = ''

if (age < 16) then
  local school = 'You can go to school'
  message = message .. school

elseif (age <= 16) and (age < 18) then
  local drive = 'You can drive'
  message = message .. drive

else
  local vote = 'You can vote'
  message = message .. vote

end

io.write('You are ', age, ' years old', '\n')
io.write(message, '\n')
