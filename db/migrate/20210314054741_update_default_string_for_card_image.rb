class UpdateDefaultStringForCardImage < ActiveRecord::Migration[6.1]
  def change
    change_column :cards, :image, :string, default: '/assets/images/Clubs/9C.png'
  end
end
