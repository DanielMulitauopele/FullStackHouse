require 'rails_helper'

describe Card, type: :model do
    describe 'validations' do
        it {should validate_presence_of(:suit)}
        it {should validate_presence_of(:value)}
        it {should validate_presence_of(:name)}
        it {should validate_presence_of(:color)}
    end

    describe 'relationships' do
        it {should have_many :deck_cards}
    end
end