require 'rails_helper'

# On the right side of this RSpec.feature, write the test item name like "task management feature" (grouped by do ~ end)
RSpec.feature "Question management function", type: :feature do
  # In scenario (alias of it), write the processing of the test for each item you want to check
  
  it "Create Department test" do
    @dep = Department.create(name: 'Management of Test', short_name:'MT')
    assert @dep
  end
  it "Validate the name of department" do
    @dep = Department.create!(name: 'Information Technology', short_name:'IT')
    expect(@dep).to be_valid
  end
end