# source : https://leetcode.com/problems/walking-robot-simulation/
# @param {Integer[]} commands
# @param {Integer[][]} obstacles
# @return {Integer}

def update_orientation (orientation, cmd)
    step =(cmd == -2)? -1 : 1
    (orientation + step) %4
end
def not_obstacle?(obstacles,x,y)
    obstacles.none?{|obs| obs[0]==x && obs[1]==y}
end 
def move_robot (current,cmd,orientation,obstacles)
    
    cmd.times do
        case orientation
            when 0
                current[1]+=1 if not_obstacle?(obstacles,current[0],current[1]+1)
            when 1
                current[0]+=1 if not_obstacle?(obstacles,current[0]+1,current[1])
            when 2
                current[1]-=1 if not_obstacle?(obstacles,current[0],current[1]-1)
            when 3
                current[0]-=1 if not_obstacle?(obstacles,current[0]-1,current[1])
            else 
             return
        end
    end
end

def robot_sim(commands, obstacles)
    current=[0,0]
    orientation=0
    commands.each do |cmd|
        case cmd
            when -2..-1
                orientation = update_orientation(orientation, cmd)
            else
                move_robot(current,cmd,orientation,obstacles)
        end
    end
    current[0]** 2 + current[1]** 2
end
