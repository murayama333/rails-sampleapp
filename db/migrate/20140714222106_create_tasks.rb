class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :memo
      t.integer :status

      t.timestamps
    end
  end
end
