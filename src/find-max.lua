function findMax( ... )
  local arguments = {...}
  local max = ...

  for i=1, #arguments do
    if arguments[i] > max then
      max = arguments[i]
    end
  end

  return max
end

local max = findMax(1,3,13,7,8,9)
print(max)