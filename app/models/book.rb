require 'csv'

class Book < ActiveRecord::Base
  validates_presence_of :checkout_id
  validates_presence_of :title
  validates_numericality_of :rating

  belongs_to :checkout,
    inverse_of: :books
  has_many :categorizations,
    inverse_of: :book

  def self.seed
    datafile = Rails.root + 'db/data/books.csv'

    CSV.foreach(datafile, headers: true) do |row|
      Book.find_or_create_by(title: row["title"],
                            author: row["author"],
                            rating: row["rating"].to_i,
                            checkout_id: row["checkout_id"].to_i
                            )
    end
  end

end
#

#
