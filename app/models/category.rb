class Category < ActiveRecord::Base
  validates_presence_of :name

  def self.seed
    datafile = Rails.root + 'db/data/categories.csv'

    CSV.foreach(datafile, headers: true) do |row|
      Category.find_or_create_by(name: row["name"])
    end
  end
end
