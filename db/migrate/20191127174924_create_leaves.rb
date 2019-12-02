class CreateLeaves < ActiveRecord::Migration[5.2]
  def change
    create_table :leaves do |t|
      t.string :leave_type
      t.text :description
      t.integer :status, default: 0
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
