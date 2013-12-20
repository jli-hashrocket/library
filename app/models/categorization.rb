class Categorization < ActiveRecord::Base
  validates_presence_of :book_id
  validates_presence_of :category_id
end
