class RemoveCategorizationIdFromBooksAndCategories < ActiveRecord::Migration
  def up
    remove_column :books, :categorization_id
    remove_column :categories, :categorization_id
  end
  def down
    add_column :books, :categorization_id, :integer, null:false
    add_column :categories, :categorization_id, :integer, null:false
  end
end
