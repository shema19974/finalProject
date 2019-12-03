require 'rails_helper'

# On the right side of this RSpec.feature, write the test item name like "task management feature" (grouped by do ~ end)
RSpec.feature "Employee management function", type: :feature do
  # In scenario (alias of it), write the processing of the test for each item you want to check.
 
    # Task.create!(title: 'Student', content: 'Is a good student')
    # Task.create!(title: 'Accountant', content: 'Balance money')
    background do
        @dep = Department.create!(name: 'Information Technology', short_name: 'IT')  
    end
    scenario "Test the create employee" do
      @employee= Employee.create!(first_name: "Prince",last_name: "Shema", email: 'shema12@gmail.com', birth_date: Time.current, department_id: @dep.id, password: 'prince', admin:"true")
      assert @employee
    end    
    scenario "list of employees" do
      @employee=Employee.all
      assert @employee       
    end
    scenario "Validation of first_name" do
      @employee= Employee.create!(first_name: "Check",last_name: "Shema", email: 'shema12@gmail.com', birth_date: Time.current, department_id: @dep.id, password: 'prince', admin:"true")       
    
    expect(@employee).to be_valid
    end
    scenario "Validation of last_name" do
      @employee= Employee.create!(first_name: "Check",last_name: "Shema", email: 'shema12@gmail.com', birth_date: Time.current, department_id: @dep.id, password: 'prince', admin:"true")      
      expect(@employee).to be_valid
    end
    it "Validation does not pass if the first name is empty" do
      @employee= Employee.new(first_name: "",last_name: "Shema", email: 'shema12@gmail.com', birth_date: Time.current, department_id: @dep.id, password: 'prince', admin:"true")
      expect(@employee).not_to be_valid
    end
    it "Validation does not pass if the last name is empty" do
      @employee= Employee.new(first_name: "Paul",last_name: "", email: 'shema12@gmail.com', birth_date: Time.current, department_id: @dep.id, password: 'prince', admin:"true")
      expect(@employee).not_to be_valid
    end
    it "Validation of birth_date" do
      @employee= Employee.new(first_name: "Paul",last_name: "Prince", email: 'shema12@gmail.com', birth_date: Time.current, department_id: @dep.id, password: 'prince', admin:"true")
      expect(@employee).to be_valid
    end
    it "Validation does not pass if birth_date is empty" do
      @employee= Employee.new(first_name: "Paul",last_name: "Prince", email: 'shema12@gmail.com', birth_date: '', department_id: @dep.id, password: 'prince', admin:"true")
      expect(@employee).not_to be_valid
    end

end