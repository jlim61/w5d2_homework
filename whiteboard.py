# How to solve a problem:
    # Figure out what the input and its type are
    # Set up a function
    # Figure out what the output and its type are
    # Gather Your Knowledge
    # Gathers Your Constraints (Not always necessary) 
    # Determine a Logical way to solve the problem
        #Write each step out English
        #Write each step out in Python-esse (sudo-code)
    # Invoke and Test Your Function

'''
Given an array of integers, find the one that appears an odd number of times.
There will always be only one integer that appears an odd number of times.
Examples
[7] should return 7, because it occurs 1 time (which is odd).
[0] should return 0, because it occurs 1 time (which is odd).
[1,1,2] should return 2, because it occurs 1 time (which is odd).
[0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
[1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).
'''

'''
Brainstorm:

Input = list, output = integer (element from list)
there will ALWAYS be at least one integer. there isn't an empty list option
thinking I can just append each number and then count it. or I can just count from the list provided
'''

def appear_odd(alist):
    for num in alist:
        if  alist.count(num) % 2 != 0:
            return num

'''
Time Complexity

Overall -> O(n^2)
def appear_odd(alist):
    for num in alist: -> O(n)
        if  alist.count(num) % 2 != 0: -> O(n)
            return num -> O(1)
'''

test1 = [7]
test2 = [0]
test3 = [1,1,2]
test4 = [0,1,0,1,0]
test5 = [1,2,2,3,3,3,4,3,3,3,2,2,1]

print(appear_odd(test1))
print(appear_odd(test2))
print(appear_odd(test3))
print(appear_odd(test4))
print(appear_odd(test5))