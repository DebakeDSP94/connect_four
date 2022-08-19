#frozen_string_literal: true

require_relative '../lib/player'

describe 'Player' do
  subject(:player) { described_class.new }
  describe '#validate_name' do
    context 'when a blank name given' do
      it 'returns false' do
        name = ''
        expect(Player).not_to be_name_valid(name)
      end
    end

    context 'when given a valid name' do
      it 'returns true' do
        name = 'goodname'
        expect(Player).to be_name_valid(name)
      end
    end

    context 'when given a too long name' do
      it 'returns false' do
        name = 'somesuperlongridiculousname'
        expect(Player).not_to be_name_valid(name)
      end
    end

    context 'when given a name with special characters' do
      it 'returns false' do
        name = '&^#ggy'
        expect(Player).not_to be_name_valid(name)
      end
    end
  end

  describe '#game_piece_valid' do
    context 'when given a valid choice'do 
      it 'returns true' do
        game_piece = '2'
        expect(Player).to be_game_piece_valid(game_piece)
      end
    end

    context 'when given an invalid choice' do
      it 'returns false' do
        game_piece = '5'
        expect(Player).not_to be_game_piece_valid(game_piece)
      end
    end
  end
end