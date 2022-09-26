require 'rails_helper'

RSpec.describe Doctorpatient do

  it {should belong_to(:doctor)}
  it {should belong_to(:patient)}
end