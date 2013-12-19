require 'spec_helper'

describe Book do
  it {should validate_presence_of :title}
  it {should have_valid(:rating).when(100)}

  it {should belong_to :checkout}
end
