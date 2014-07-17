class RemoveMemoFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :memo, :string
  end
end
