require 'rails_helper'

describe DeckCard, type: :model do
    describe "relationships" do 
        it {should belong_to :card}
        it {should belong_to :deck}
    end
end