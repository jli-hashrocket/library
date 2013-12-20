class AddCategorizationIdToBooks < ActiveRecord::Migration
  def up
    add_column :books, :categorization_id, :integer, null:false
  end

  def down
    remove_column :books, :categorization_id
  end
end
