CalorieCounter = {
  count = 0,
  goal = 2000,
}

function CalorieCounter:add(amount)
  self.count = self.count + amount
end

function CalorieCounter:didReachGoal()
  return self.count >= self.goal
end

function CalorieCounter:new(t)
  t = t or {}
  setmetatable(t, self)
  self.__index = self
  return t
end

-- c = CalorieCounter:new({ goal = 1500 })
-- c = CalorieCounter:new{ goal = 1500 }
-- c:add(500)
-- print(c.count)
-- print(c:didReachGoal())

-- c:add(1000)
-- print(c.count)
-- print(c:didReachGoal())


-- The same as...
-- function CalorieCounter.add(self, amount)
-- end


----------------
HealthMonitor = CalorieCounter:new{ steps = 0, stepGoal = 10000 }

function HealthMonitor:step(amount)
  self.steps = self.steps + amount
end

function HealthMonitor:didReachGoal()
  local goalsReached = 0

  if self.count >= self.goal then
    print('Calorie goal of ' .. self.count .. ' reached')
    goalsReached = goalsReached + 1
  else
    print('Calorie goal not reached, yet')
  end

  if self.steps >= self.stepGoal then
    print('Step goal of ' .. self.stepGoal .. ' reached')
    goalsReached = goalsReached + 1
  else
    print('Step goal not reached, yet')
  end

  return goalsReached >= 2
end

return {
  CalorieCounter = CalorieCounter,
  HealthMonitor = HealthMonitor,
}
