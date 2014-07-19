class AddImageToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :image, :binary
  end
end
