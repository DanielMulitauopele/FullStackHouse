require 'rails_helper'

describe 'user sees all decks' do
    describe 'when they visit /decks' do
        it 'should display all decks' do 
            deck1 = Deck.create(name: 'First Deck', deck_type: 'Standard', count: 1)
            deck2 = Deck.create(name: 'Second Deck', deck_type: 'Standard', count: 1)

            visit decks_path 

            expect(page).to have_content(deck1.name)
            expect(page).to have_content(deck2.name)
        end
    end
end