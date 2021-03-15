class DeckCard < ApplicationRecord
    belongs_to :card
    belongs_to :deck, counter_cache: :cards_count
end