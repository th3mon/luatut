for i = 0, 10, 1 do
  io.write(i, '\n')
end

months = {
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
}

for key, value in pairs(months) do
  io.write(value .. ' [' .. key .. ']', '\n')
end
