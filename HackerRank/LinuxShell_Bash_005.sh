#!bin/bash
#Given two integers, X and Y, identify whether X > Y or X = Y or X< Y> .
#Exactly one of the following lines:
#   - X is less than Y
#   - X is greater than Y
#   - X is equal to Y
#Input Format
#   Two lines containing one integer each ( and , respectively).
#Constraints
#   -
#Output Format
#   Exactly one of the following lines:
#   - X is less than Y
#   - X is greater than Y
#   - X is equal to Y
#Sample Input
#   Sample Input 1
#       5  
#       2  
#   Sample Input 2
#       2
#       2  
#   Sample Input 3
#       2
#       3  
#Sample Output
#   Sample Output 1
#       X is greater than Y  
#   Sample Output 2
#       X is equal to Y   
#   Sample Output 3
#       X is less than Y  
#Explanation
#   -
read X
read Y
diff_x_y=$(($X - $Y))
if [[ $diff_x_y = 0 ]]; then
    echo "X is equal to Y"
elif [[ $diff_x_y  > 0 ]]; then
    echo "X is greater than Y"
else
    echo "X is less than Y"
fi