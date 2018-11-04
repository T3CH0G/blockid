class CreateCheckins < ActiveRecord::Migration[5.1]
  def change
    create_table :checkins do |t|
      t.integer :student_id
      t.integer :professor_id
      t.datetime :time
      t.string :status
      t.string :hashkey
      t.string :previous_hashkey


      t.timestamps
    end
  end
end
