class UpdateCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :image, :string, default: "/Clubs/9C.png"
  end
end
