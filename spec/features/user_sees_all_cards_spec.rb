require 'rails_helper'

describe 'user can see all cards' do
    describe 'they visit /cards' do
       it 'should display all cards' do
            card1 = Card.create!(suit: 'Hearts', value: 'Queen', name: 'Queen of Hearts', color: 'Red')
            card2 = Card.create!(suit: 'Spades', value: 'Ace', name: 'Ace of Spades', color: 'Black')
            card3 = Card.create!(suit: 'Diamonds', value: 'Ten', name: 'Ten of Diamonds', color: 'Red')
            card4 = Card.create!(suit: 'Clubs', value: 'Three', name: 'Three of Clubs', color: 'Black')

            visit '/cards'

            expect(page).to have_content(card1.suit)
            expect(page).to have_content(card2.suit)
            expect(page).to have_content(card3.suit)
            expect(page).to have_content(card4.suit)

            expect(page).to have_content(card1.value)
            expect(page).to have_content(card2.value)
            expect(page).to have_content(card3.value)
            expect(page).to have_content(card4.value)
        end 
    end
end