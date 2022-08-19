#frozen_string_literal: true

# Class for creating the player instance
class Player
  attr_accessor :name, :game_piece

  def initialize
    @name = nil
    @game_piece = nil
  end

  def self.name_valid?(name)
    name.match?(/^[\w+]{1,15}$/)
  end

  def self.game_piece_valid?(game_piece)
    game_piece.match?(/[1]|[2]/)
  end
end