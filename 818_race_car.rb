# @param {Integer} target
# @return {Integer}
def racecar(target)
  position = 0
  speed = 1
  response = 0

  # loop until i break it
  while true

    # check if we go to A
    a_response = a(position, speed)
    position_a = a_response[0]
    speed_a = a_response[1]

    # check if we will got to R
    r_response = r(position, speed)
    position_r = r_response[0]
    speed_r = r_response[1]

    # compare positions with the target to know the right direction
    diff_a = (target - position_a).abs
    diff_r = (target - position_r).abs

    if diff_a < diff_r
      # if diff_a < diff_r this mean going to A is making us near to our target .
      position = position_a
      speed = speed_a
      response += 1
    else
      # else mean that going R will make us near to target
      position = position_r
      speed = speed_r
      response += 1
    end

    # check our decision goes right or not
    if position == target
      return response
    end
  end
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