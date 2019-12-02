require 'rails_helper'

# On the right side of this RSpec.feature, write the test item name like "task management feature" (grouped by do ~ end)
RSpec.feature "Post management function", type: :feature do
  # In scenario (alias of it), write the processing of the test for each item you want to check.
 
    # Task.create!(title: 'Student', content: 'Is a good student')
    # Task.create!(title: 'Accountant', content: 'Balance money')

    # scenario "Test the create post" do
    #   @employee= Employee.first
    #   @post= Post.create!(title: "Break time", content: "Next friday we have a day of due to independent day", employee_id: @employee.id )
    #   assert @post
    # end    
    scenario "list of employees" do
      @post=Post.all
      assert @post       
    end
    
end