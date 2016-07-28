class AddColmunCommentsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :comments, :string
  end
end
