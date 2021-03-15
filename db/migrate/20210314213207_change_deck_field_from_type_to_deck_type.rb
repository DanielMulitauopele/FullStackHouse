class ChangeDeckFieldFromTypeToDeckType < ActiveRecord::Migration[6.1]
  def change
    remove_column :decks, :type
    add_column :decks, :deck_type, :string
  end
end
