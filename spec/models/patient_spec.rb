require 'rails_helper'

RSpec.describe Patient do 

  it {should have_many(:doctorpatients}
  it {should have_many(:doctors).through(:doctorpatients)}
end