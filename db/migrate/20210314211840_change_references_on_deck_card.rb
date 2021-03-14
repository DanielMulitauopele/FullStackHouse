class ChangeReferencesOnDeckCard < ActiveRecord::Migration[6.1]
  def change
    remove_reference :deck_cards, :cards, index: true, foreign_key: true
    remove_reference :deck_cards, :decks, index: true, foreign_key: true

    add_reference :deck_cards, :card, index: true, foreign_key: true
    add_reference :deck_cards, :deck, index: true, foreign_key: true
  end
end
