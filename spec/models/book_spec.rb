require 'spec_helper'

describe Book do
  it { should validate_presence_of :checkout_id }
  it { should validate_presence_of :title }
  it { should have_valid(:rating).when(100) }

  it { should belong_to :checkout }
  it { should have_many :categorizations}

  it 'returns a database object once books.csv has been seeded' do
    Book.seed
    expect(Book.exists?(title: "Dark Witch", author: "Nora Roberts", rating: 80, checkout_id: 1)).to be_true
  end
end
