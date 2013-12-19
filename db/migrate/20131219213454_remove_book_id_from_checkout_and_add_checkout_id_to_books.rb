class RemoveBookIdFromCheckoutAndAddCheckoutIdToBooks < ActiveRecord::Migration
  def up
    remove_column :checkouts, :book_id
    add_column :books, :checkout_id, :integer, null:false
  end

  def down
    remove_column :books, :checkout_id
    add_column :checkouts, :book_id, :integer, null:false
  end
end
