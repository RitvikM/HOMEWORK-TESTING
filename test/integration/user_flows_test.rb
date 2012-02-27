require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  fixtures :all

  # test "the truth" do
  #   assert true
  # end
  
    def test_password_check
	visit user_path
	click_link "New User"
	fill_in "Name", with: "Ritvik"
	click_button "Create User"
	
	error_message="Password can't be blank"
	assert page.has_content? (error_message)
	end  
  
  
  
end
