class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.boolean :reps
      t.boolean :weight
      t.boolean :duration
      t.boolean :calories
      t.boolean :distance

      t.timestamps
    end
  end
end
