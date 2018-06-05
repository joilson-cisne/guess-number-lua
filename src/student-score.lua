local grades = { Mary = 100, Teacher = 200 }

while true do
  print 'Enter student name (q to quit)'
  local name = io.read()

  if name == 'q' then
    break
  end

  print 'Enter the student score'
  local score = io.read('*n', '*l')

  grades[name] = score
end

print 'Printing grades!'
for k, v in pairs(grades) do
  print(k, v)
end

-- print(grades.Mary)
-- print(grades['Mary'])
