require 'rails_helper'

# On the right side of this RSpec.feature, write the test item name like "task management feature" (grouped by do ~ end)
RSpec.feature "Department management testing", type: :feature do
  # In scenario (alias of it), write the processing of the test for each item you want to check
  background  do
    @dep = Department.create!(name: 'Information Technology', short_name: 'IT')
    @employee= Employee.create!(first_name: "Prince",last_name: "Shema", email: 'shema@gmail.com', birth_date: Time.current, department_id: @dep.id, password: 'prince', admin:"true")
    @post = Post.create!(title: 'A good post', content: 'Tomorrow, there is a day off', employee_id: @employee.id)
  end
  it "Validation does not pass if the content is empty" do
    comment=Comment.create!(content:"This is a valid content", post_id:@post.id)
    expect(comment).to be_valid
  end
  it "Validation does not pass if the content is empty" do
    comment=Comment.create!(content:"This is a valid content", post_id:@post.id)
    expect(comment).to be_valid
  end



end