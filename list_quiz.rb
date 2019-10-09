def three_even?(list)
    x = 0 # this describes the starting postion of the list which would be 0
    (list.size - 1).times do |n| # use times loop instead of each because there will be a change in list.size rather than the list.each 
        if list[x] % 2 == 0 && list[x + 1] % 2 == 0 && list[x - 1] % 2 == 0 # starts at postion 0 in the list and check positions 0, 1, 2 and checks the modulust of 2 to determine if it's even or odd
            return true
        end
        x += 1 # changes the x value so that the position changes by 1. This command will check position 1, 2, 3 this time as postiition 0, 1, 2 have already been checked in the if loop above. 
    end
    return false
end

puts three_even? ([2, 1, 3, 5]) # false
puts three_even? ([2, 4, 12, 5]) # true
puts three_even? ([2, 1, 4, 6]) # false
puts three_even? ([1, 4, 6, 4]) # true
puts three_even? ([1]) # false

def bigger_two(list1, list2)
    sum1= 0
    sum2 = 0
    sorted1 = list1.sort
    sorted2 = list2.sort
    list1.each do |num1|
        sum1 = sum1 + num1
    end
    list2.each do |num2|
        sum2 = sum2 + num2
    end
    if sum2 > sum1
        return sorted2
    end
    return sorted1
end

# bigger_two worked my first time around

print bigger_two([1, 2], [3, 4]) # [3, 4]
puts "\n" # the "\n" command just splits the printed list so that it is not all on one line
print bigger_two([1, 7], [4, 4]) # [1, 7]
puts "\n"

def series_up(n)
    high = 1 # defines the highest num at the 0 spot in the list
    num = 1 # definse the amount of nums in the list at the lowest spot
    list = []
    n.times do # loop for the series to add more numbers into the list depending on the input function given in the function below
        num = 1 # resets the list at 1, so the series can restart depending on what the number is
        while num <= high # the while loop prints the number from 1 to the input value in the function
            list.push(num) # the push inside of the while loop contiues to push the numbers to continue the series defined by the input value
            num += 1  # increase the number until it eventually becomes bigger than the high number that has already been defined
        end
        high += 1 # sets the highest number up by 1 so the series defined in the while loop can continue to add more numebers to the return list
    end
    return list
end

print series_up(1) # [1]
puts "\n"
print series_up(2) # [1, 1, 2]
puts "\n"
print series_up(3) # [1, 1, 2, 1, 2, 3]
puts "\n"
print series_up(4) # [1, 1, 2, 1, 2, 3, 1, 2, 3, 4]



