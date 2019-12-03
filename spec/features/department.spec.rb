require 'rails_helper'

# On the right side of this RSpec.feature, write the test item name like "task management feature" (grouped by do ~ end)
RSpec.feature "Department management function", type: :feature do
  # In scenario (alias of it), write the processing of the test for each item you want to check
  
  it "Create Department test" do
    @dep = Department.create(name: 'Management of Test', short_name:'MT')
    assert @dep
  end
  it "Validate the name of department" do
    @dep = Department.create!(name: 'Information Technology', short_name:'IT')
    expect(@dep).to be_valid
  end
  it "Validate the short name of department" do
    @dep = Department.create!(name: 'Information Technology', short_name:'IT')
    expect(@dep).to be_valid
  end

  it "Validation does not pass if name is empty" do
    @dep = Department.new(name: '', short_name: 'IT')
    expect(@dep).not_to be_valid
  end
  it "Validation does not pass if short name is empty" do
    @dep = Department.new(name: 'Information Technology', short_name: '')
    expect(@dep).not_to be_valid
  end

end