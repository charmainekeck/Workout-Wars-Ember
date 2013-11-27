class CreateEventExercises < ActiveRecord::Migration
  def change
    create_table :event_exercises do |t|
      t.integer :exercise_id
      t.belongs_to :exerciseable, polymorphic: true

      t.timestamps
    end
    add_index :event_exercises, [:exerciseable_id, :exerciseable_type]
  end
end
