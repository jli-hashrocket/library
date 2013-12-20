class AddCategorizationIdCategory < ActiveRecord::Migration
  def up
    add_column :categories, :categorization_id, :integer, null:false
  end
  def down
    remove_column :categories, :categorization_id
  end
end
