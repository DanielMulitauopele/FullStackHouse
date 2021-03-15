require 'rails_helper'

describe "it should show home page" do
    describe "when user visits root" do
        it "should show links to deck and card indexes" do
            visit root_path

            expect(page).to have_content("Welcome to the Full(stack!) House: Altvia Edition")
        end
    end
end
