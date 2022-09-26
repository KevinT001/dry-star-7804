require 'rails_helper'

RSpec.describe Doctorpatient do

  it {should belong_to(:doctors)}
  it {should belong_to(:patients)}
end