class Book < ActiveRecord::Base
  validates_presence_of :checkout_id
  validates_presence_of :title
  validates_numericality_of :rating

  belongs_to :checkout,
    inverse_of: :books
end
