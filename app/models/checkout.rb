class Checkout < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :checkout_date
  validates_presence_of :due_date

  has_many :books,
    inverse_of: :checkout

end
