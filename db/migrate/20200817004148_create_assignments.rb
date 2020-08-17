class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :name
      t.boolean :completed
      t.text :questions
      t.integer :difficutly

      t.timestamps
    end
  end
end
