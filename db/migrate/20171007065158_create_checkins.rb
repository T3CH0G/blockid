class CreateCheckins < ActiveRecord::Migration[5.1]
  def change
    create_table :checkins do |t|
      t.integer :student_id
      t.integer :section_id
      t.datetime :time
      t.string :status, default: 'Present'

      t.timestamps
    end
  end
end
