class RemoveCardsFromDeck < ActiveRecord::Migration[6.1]
  def change
    remove_reference :cards, :deck, null: false, foreign_key: true
  end
end
