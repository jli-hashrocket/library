class ChangeContraintsForBooks < ActiveRecord::Migration
  def up
    remove_column :books, :title
    add_column :books, :title, :string, null:false
  end
  def down
    remove_column :books, :title
    add_column :books, :title, :string
  end
end
