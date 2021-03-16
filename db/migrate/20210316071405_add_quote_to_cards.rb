class AddQuoteToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :quote, :text
  end
end
