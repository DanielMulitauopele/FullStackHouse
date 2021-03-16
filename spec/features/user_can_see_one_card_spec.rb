require 'rails_helper'

describe 'user sees one card' do
    describe 'when they visit from the index page' do
        before(:each) do
            @card = Card.create!(suit: 'Hearts', value: 'Queen', name: 'Queen of Hearts', color: 'Red')
        end

        it "should show all card details" do
            visit cards_path 

            expect(page).to have_content(@card.name)

            click_link @card.name 

            expect(page).to have_content(@card.name)
            expect(page).to have_content(@card.value)
            expect(page).to have_content(@card.suit)
        end
    end
end