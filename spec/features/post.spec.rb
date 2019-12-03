require 'rails_helper'

# On the right side of this RSpec.feature, write the test item name like "task management feature" (grouped by do ~ end)
RSpec.feature "Post management function", type: :feature do
  # In scenario (alias of it), write the processing of the test for each item you want to check.
 
    # Task.create!(title: 'Student', content: 'Is a good student')
    # Task.create!(title: 'Accountant', content: 'Balance money')
    background do
      @dep = Department.create!(name: 'Information Technology', short_name: 'IT')
      @em = Employee.create(first_name: 'soki', last_name: 'prince', email: 'gai@gmail.com', birth_date: Time.current, password: 'prince', department_id: @dep.id)
    end

    scenario "Test the create post" do
      @post = Post.create(title: 'Tomorrow no work', content: 'I am not doing well', employee_id: @em.id)
      assert @post
    end    
    scenario "list of employees" do
      @post=Post.all
      assert @post       
    end
    it "Validate the title of post" do
      @post = Post.create(title: 'Tomorrow no work', content: 'I am not doing well', employee_id: @em.id)
      expect(@post).to be_valid
    end
    it "Validate the content of post" do
      @post = Post.create(title: 'Tomorrow is passover day, no work', content: 'You have to stay home', employee_id: @em.id)
      expect(@post).to be_valid
    end
    it "Validate does not pass if the title of a post is empty" do
      @post = Post.create(title: '', content: 'I am not doing well', employee_id: @em.id)
      expect(@post).not_to be_valid
    end
    it "Validate does not pass if the content of a post is empty" do
      @post = Post.create(title: 'Its a day of', content: '', employee_id: @em.id)
      expect(@post).not_to be_valid
    end
    
end