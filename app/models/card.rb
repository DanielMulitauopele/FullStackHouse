class Card < ApplicationRecord
    validates_presence_of :suit, :value, :name, :color

    has_many :deck_cards
    has_many :decks, through: :deck_cards
end