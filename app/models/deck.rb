class Deck < ApplicationRecord
    validates_presence_of :name, :deck_type, :count

    has_many :deck_cards
    has_many :cards, through: :deck_cards
end