# You will create a method that takes two inputs:
#  - an integer for edge size
#  - an array of "markers".

#  The edge size will indicate the height and width of your map grid. For example, 
# if 'size' is 4, you'll make a 4x4 grid, if it's 10 you'll make a 10x10 grid, and so on.
# #  These will be the first markers to place on the map:
# #  - '$' indicates treasure
#  - 'a' indicates an animal
#  - '#' indicates a rock pile
#  - ' ' indicates empty space
#  - 'w' indicates water
#  We want to avoid having treasure next to other treasure in our game world. 
# Your map generator must make sure that there are no points on the grid where treasure exists 
# in any cells around another treasure (including diagonally).
#  All markers on the map should have an approximately equal chance of appearing on the map.
#  The "markers" input will always have treasure as the first element in its list, and we want to 
# be able to add or remove markers from that input without having to alter any other portion of your algorithm.
#  Output of the map should look something like this, depending on your programming language, where `size` is 5:
#  '$', 'a', '$', '#', 'w'
#  ' ', 'a', '#', '#', ' '
#  ' ', '$', 'a', ' ', '$'
#  '#', 'w', 'a', ' ', '#'
#  '$', 'a', '$', '#', ' '