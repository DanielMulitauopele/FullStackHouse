class AddCardCountToDecks < ActiveRecord::Migration[6.1]
  def change
    add_column :decks, :cards_count, :integer
    remove_column :decks, :count, :integer
  end
end
