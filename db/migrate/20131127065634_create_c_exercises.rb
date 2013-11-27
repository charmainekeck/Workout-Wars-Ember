class CreateCExercises < ActiveRecord::Migration
  def change
    create_table :c_exercises do |t|
      t.integer :exercise_id
      t.belongs_to :exerciseable, polymorphic: true

      t.timestamps
    end
    add_index :c_exercises, [:exerciseable_id, :exerciseable_type]
  end
end
