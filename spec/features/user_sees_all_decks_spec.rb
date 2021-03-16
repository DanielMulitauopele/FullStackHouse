require 'rails_helper'

describe 'user sees all decks' do
    describe 'when they visit /decks' do
        it 'should display all decks' do 
            deck1 = Deck.create!(name: 'First Deck', deck_type: 'Standard', back_image: "/images/deck_backs/blue_back.png")
            deck2 = Deck.create!(name: 'Second Deck', deck_type: 'Standard', back_image: "/images/deck_backs/blue_back.png")

            deck1.cards.create!(suit: 'Hearts', value: 'Queen', name: 'Queen of Hearts', color: 'Red')
            deck1.cards.create!(suit: 'Spades', value: 'Ace', name: 'Ace of Spades', color: 'Black')
            deck1.cards.create!(suit: 'Diamonds', value: 'Ten', name: 'Ten of Diamonds', color: 'Red')
            deck1.cards.create!(suit: 'Clubs', value: 'Three', name: 'Three of Clubs', color: 'Black')

            visit decks_path 

            expect(page).to have_content(deck1.name)
            expect(page).to have_content(deck2.name)
        end
    end
end