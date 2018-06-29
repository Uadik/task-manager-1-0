class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.text :text
      t.boolean :is_completed
      t.references :project, foreign_key: true, optional: true

      t.timestamps
    end
  end
end
