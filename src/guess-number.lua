function getRandomNumber(maxValue)
  math.randomseed(os.time())
  math.random()
  return math.random(maxValue)
end

function handleGuesses(...)
  lowMessage, highMessage, number = ...

  while answer ~= number do
    local answer = io.read('*n')
  
    if answer > number then
      print(highMessage) -- 'Too high'
    elseif answer < number then
      print(lowMessage)
    else
      break
    end
  
    print 'Guess again'
  end
end

local number = getRandomNumber(10)

print 'Guess a number'
handleGuesses('Too low', 'Too high', number)

print 'You got it!'