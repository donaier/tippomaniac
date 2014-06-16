class AddFinalTippToUsers < ActiveRecord::Migration
  def change
    add_column :users, :winnawinna, :string
  end
end
