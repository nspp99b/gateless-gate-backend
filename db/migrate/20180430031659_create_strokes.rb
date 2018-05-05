class CreateStrokes < ActiveRecord::Migration[5.1]
  def change
    create_table :strokes do |t|
      t.integer :sound
      t.integer :user_id
      t.integer :performance_id

      t.timestamps
    end
  end
end
