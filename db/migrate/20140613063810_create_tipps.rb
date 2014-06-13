class CreateTipps < ActiveRecord::Migration
  def change
    create_table :tipps do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :tipp_home
      t.integer :tipp_visitor

      t.timestamps
    end
  end
end
