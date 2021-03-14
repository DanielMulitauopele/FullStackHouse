require 'rails_helper'

describe Deck, type: :model do
    describe 'validations' do
        it {should validate_presence_of(:name)}
        it {should validate_presence_of(:deck_type)}
        it {should validate_presence_of(:count)}
    end

    describe 'relationships' do
        it {should have_many :deck_cards}
    end
end