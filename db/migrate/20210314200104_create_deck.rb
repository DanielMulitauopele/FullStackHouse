class CreateDeck < ActiveRecord::Migration[6.1]
  def change
    create_table :decks do |t|
      t.string :name
      t.string :type
      t.integer :count

      t.timestamps
    end
  end
end
