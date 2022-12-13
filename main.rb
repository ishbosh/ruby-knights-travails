# frozen_string_literal: true

require_relative 'knight'

# Driver script to run knight_moves
knight = Knight.new
knight.knight_moves([3, 3], [0, 0])
knight.knight_moves([3, 3], [6, 7])
knight.knight_moves([2, 3], [4, 4])
knight.knight_moves([7, 7], [0, 0])
