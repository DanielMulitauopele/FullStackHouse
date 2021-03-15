require 'rails_helper'

describe "user sees one specific deck" do
    describe "when linking from deck index page" do 
        before(:each) do
            @deck1 = Deck.create!(name: 'First Deck', deck_type: 'Standard')

            @deck1.cards.create!(suit: 'Hearts', value: 'Queen', name: 'Queen of Hearts', color: 'Red')
            @deck1.cards.create!(suit: 'Spades', value: 'Ace', name: 'Ace of Spades', color: 'Black')
            @deck1.cards.create!(suit: 'Diamonds', value: 'Ten', name: 'Ten of Diamonds', color: 'Red')
            @deck1.cards.create!(suit: 'Clubs', value: 'Three', name: 'Three of Clubs', color: 'Black')
        end
        
        it "should show all deck details" do
            visit decks_path 

            expect(page).to have_content(@deck1.name)

            click_link @deck1.name 

            expect(page).to have_content(@deck1.name)
            expect(page).to have_content(@deck1.deck_type)
            expect(page).to have_content(@deck1.cards.first.suit)
            expect(page).to have_content(@deck1.cards.first.value)
            expect(page).to have_content(@deck1.cards.first.name)
        end

        it "should shuffle deck when shuffle button is pressed" do
            visit deck_path(@deck1) 

            expect(page).to have_content(@deck1.name)

            click_link "Shuffle this deck"

            expect(page).to have_content(@deck1.name)
        end
    end
end