require 'rails_helper'

# On the right side of this RSpec.feature, write the test item name like "task management feature" (grouped by do ~ end)
RSpec.feature "Leave management function", type: :feature do
  # In scenario (alias of it), write the processing of the test for each item you want to check
  background do
    @dep = Department.create!(name: 'Information Technology', short_name: 'IT')
    @em = Employee.create(first_name: 'soki', last_name: 'prince', email: 'gai@gmail.com', birth_date: Time.current, password: 'prince', department_id: @dep.id)
  end
  it "Create leave test" do
    @leaf = Leafe.create(leave_type: 'Sick leave', description: 'Feeling very bad', employee_id: @em.id)
    assert @leaf
  end
  it "Validate the leave type of leave" do
    @leaf = Leafe.create(leave_type: 'Sick leave', description: 'Feeling very bad', employee_id: @em.id)
    expect(@dep).to be_valid
  end
  it "Validate the description of leave" do
    @leaf = Leafe.create(leave_type: 'Sick leave', description: 'Feeling very bad', employee_id: @em.id)
    expect(@leaf).to be_valid
  end

  it "Validation does not pass leave_type is empty" do
    @leaf = Leafe.create(leave_type: '', description: 'Feeling very bad', employee_id: @em.id)
    expect(@leaf).not_to be_valid
  end
  it "Validation does not pass if description is empty" do
    @leaf = Leafe.create(leave_type: '', description: 'Feeling very bad', employee_id: @em.id)
    expect(@leaf).not_to be_valid    
  end

end