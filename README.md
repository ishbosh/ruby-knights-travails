# ruby-knights-travails
Knights Travails project in Ruby, assignment from The Odin Project

This one took me a while to wrap my head around, but I was able to figure it out 
after a while of trying different ideas. I tried to design it so that it will
be flexible to be used with other pieces in the future, but I'm not sure how
that worked out yet.

ASSIGNMENT:

On a standard 8x8 chess board, a knight can move to any square from any other square,
given enough turns. Its basic move is two steps forward and one step to the side, and
it can face any direction.

- Build a function knight_moves that shows the shortest possible way to get from one
  square to another by outputting all squares the knight will stop on along the way.

  - Put together a script that creates a game board and a knight.
  - Treat all possible moves the knight could make as children in a tree. 
    Don’t allow any moves to go off the board.
  - Decide which search algorithm is best to use for this case.
  - Use the chosen search algorithm to find the shortest path between the starting square
    (or node) and the ending square. Output what that full path looks like.

    EXAMPLE OUTPUT:
    > knight_moves([3,3],[4,3])
  => You made it in 3 moves!  Here's your path:
    [3,3]
    [4,5]
    [2,4]
    [4,3]