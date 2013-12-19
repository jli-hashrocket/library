require 'spec_helper'

describe Checkout do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :checkout_date }
  it { should validate_presence_of :due_date }


  it { should have_many :books }

end
