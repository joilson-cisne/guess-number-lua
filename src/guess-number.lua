function getRandomNumber(maxValue)
  math.randomseed(os.time())
  math.random()
  return math.random(maxValue)
end

function handleGuesses(...)
  lowMessage, highMessage, number = ...

  local guesses = {}

  while answer ~= number do
    local answer = io.read('*n')
    guesses[#guesses + 1] = answer
  
    if answer > number then
      print(highMessage) -- 'Too high'
    elseif answer < number then
      print(lowMessage)
    else
      break
    end
  
    print 'Guess again'
  end

  return guesses
end

local number = getRandomNumber(10)

print 'Guess a number'
local guesses = handleGuesses('Too low', 'Too high', number)

print 'You got it!'
print 'Here are your guesses'
for i, v in ipairs(guesses) do
  print (i, v)
end