require 'spec_helper'

describe Category do
  it { should validate_presence_of :name }

  it 'returns a database object once categories.csv has been seeded' do
    Category.seed
    expect(Category.exists?(name: "sci-fi")).to be_true
  end

end
