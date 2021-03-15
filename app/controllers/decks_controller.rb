class DecksController < ApplicationController
    def index
        @decks = Deck.all
    end

    def show
        @deck = Deck.find(params[:id])
    end

    def shuffle
        @deck = Deck.find(params[:id])
        @deck.shuffle

        redirect_to deck_path(@deck)
    end
end