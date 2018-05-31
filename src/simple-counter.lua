function simpleCounter(max)
  local count = 0
  
  return function()
    count = count + 1
    if (count > max) then
      return nil
    end

    return count
  end
end

for i in simpleCounter(10) do
  print(i)
end