class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.integer :cal_id
      t.integer :section_id
      t.string :name
      t.string :email
      t.integer :attendance

      t.timestamps
    end
  end
end
