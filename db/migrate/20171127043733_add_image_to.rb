class AddImageTo < ActiveRecord::Migration[5.1]
  def change
    add_column :candidates, :image, :string
  end
end
