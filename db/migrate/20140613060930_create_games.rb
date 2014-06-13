class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :team_home
      t.string :team_visitor
      t.integer :score_home
      t.integer :score_visitor
      t.datetime :start_time
      t.boolean :is_over

      t.timestamps
    end
  end
end
