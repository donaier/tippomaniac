class AddScoreToTipps < ActiveRecord::Migration
  def change
    add_column :tipps, :score, :integer, default: 0
  end
end
