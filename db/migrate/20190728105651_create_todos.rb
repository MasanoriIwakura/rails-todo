class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.integer :seq
      t.string :contents
      t.boolean :done

      t.timestamps
    end
  end
end
