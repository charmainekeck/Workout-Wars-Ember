class CreateTeamChallenges < ActiveRecord::Migration
  def change
    create_table :team_challenges do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :max_participants
      t.integer :lower_level_restriction
      t.string :upper_level_restriction

      t.timestamps
    end
  end
end
