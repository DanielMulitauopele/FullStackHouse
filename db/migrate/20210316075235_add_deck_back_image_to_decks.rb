class AddDeckBackImageToDecks < ActiveRecord::Migration[6.1]
  def change
    add_column :decks, :back_image, :string
  end
end
