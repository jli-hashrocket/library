require 'csv'

datafile = Rails.root + 'db/data/books.csv'

CSV.foreach(datafile, headers: true) do |row|
  Book.find_or_create_by(title: row["title"],
                        author: row["author"],
                        rating: row["rating"].to_i,
                        checkout_id: row["checkout_id"].to_i
                        )
end
