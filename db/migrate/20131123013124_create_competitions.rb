class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :max_participants
      t.integer :lower_level_restriction, default: 0
      t.integer :upper_level_restriction

      t.timestamps
    end
  end
end
