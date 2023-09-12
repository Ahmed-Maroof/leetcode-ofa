# @param {Integer} target
# @return {Integer}
# def racecar(target)
#   position = 0
#   speed = 1
#   response = 0
#
#   # loop until i break it
#   while true
#
#     # check if we go to A
#     a_response = a(position, speed)
#     position_a = a_response[0]
#     speed_a = a_response[1]
#
#     # check if we will got to R
#     r_response = r(position, speed)
#     position_r = r_response[0]
#     speed_r = r_response[1]
#
#     # compare positions with the target to know the right direction
#     diff_a = (target - position_a).abs
#     diff_r = (target - position_r).abs
#
#     if diff_a < diff_r
#       # if diff_a < diff_r this mean going to A is making us near to our target .
#       position = position_a
#       speed = speed_a
#       response += 1
#     else
#       # else mean that going R will make us near to target
#       position = position_r
#       speed = speed_r
#       response += 1
#     end
#
#     # check our decision goes right or not
#     if position == target
#       return response
#     end
#   end
# end
#
# def a(position, speed)
#   position = position + speed
#   speed *= 2
#   [position, speed]
# end
#
# def r(position, speed)
#   speed = speed.positive? ? -1 : 1
#   [position, speed]
# end
require 'set'

def racecar(target)
  # this set to gurantee that all visited nodes are saved here .
  visited = Set.new
  queue = []
  queue.unshift(moves: 0, position: 0, speed: 1)

  while true
    d_hash = queue.pop
    moves = d_hash[:moves]
    position = d_hash[:position]
    speed = d_hash[:speed]

    if position == target
      return moves
    end
    unless visited.include?({ position: position, speed: speed })
      visited << { position: position, speed: speed }
      queue.unshift(moves: moves + 1, position: position + speed, speed: speed * 2)

      # this to check our next move should be reverse or not
      # as we had 2 cases to reverse
      # first when we already after our target and speed is positive so we are not going back so we need to reverse
      # second when speed are already negative and we are before the target so no way to reach it until we reverse the direction
      if (position + speed > target && speed > 0) || (position + speed < target && speed < 0)
        speed = speed.positive? ? -1 : 1
        queue.unshift(moves: moves + 1, position: position, speed: speed)
      end

    end
  end
end

result = racecar(5)
puts result