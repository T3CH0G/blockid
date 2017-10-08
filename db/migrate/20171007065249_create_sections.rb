class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.datetime :start
      t.datetime :end
      t.integer :professor_id
      t.string :name

      t.timestamps
    end
  end
end
