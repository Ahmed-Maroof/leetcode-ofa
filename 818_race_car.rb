def racecar(target)
  position = 0
  speed = 1
  response = ''

  until position == target do

    if position < target
      # this mean we need to accelerate
      res = a(position, speed)
      response += 'A'
    else
      #this mean we need to go back
      res = r(position, speed)
      response += 'R'
    end
    position = res[0]
    speed = res[1]

  end

  response
end

def a(position, speed)
  position = position + speed
  speed *= 2
  [position, speed]
end

def r(position, speed)
  speed = speed.positive? ? -1 : 1
  [position, speed]
end

racecar(6)