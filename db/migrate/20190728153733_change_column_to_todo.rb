class ChangeColumnToTodo < ActiveRecord::Migration[5.2]
  def change
    change_column :todos, :done, :boolean, :default => false
  end
end
