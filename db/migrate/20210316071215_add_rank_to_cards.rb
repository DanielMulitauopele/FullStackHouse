class AddRankToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :rank, :integer
  end
end
